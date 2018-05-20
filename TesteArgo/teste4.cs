using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace TesteArgo
{
    public class teste4
    {
        ///www.omdbapi.com/
        const string ApiKey = "18693fd6";

        /// <summary>
        /// By Search
        /// www.omdbapi.com/?s=titulo&apikey=18693fd6
        /// </summary>
        /// <param name="filtro"></param>
        /// <returns></returns>
        public List<Filme> ListarFilmes(string filtro)
        {

            List<Filme> ResultFilm = new List<Filme>();

            using (WebClient webClient = new System.Net.WebClient())
            {
                var json = webClient.DownloadString("http://www.omdbapi.com/?s=" + filtro + "&apikey=" + ApiKey);
                var parentJObject = JObject.Parse(json);
                var xJArray = (JArray)parentJObject["Search"];
                JToken search = JObject.Parse(json).GetValue("Search");

                if (parentJObject.ContainsKey("Search"))
                {
                    ResultFilm = JsonConvert.DeserializeObject<List<Filme>>(search.ToString());

                    for (int i = 0; i < xJArray.Count; i++)
                    {
                        var firstJTokenInxJArray = (JObject)xJArray[i];

                        string Year = firstJTokenInxJArray["Year"].ToString().Substring(0, 4);

                        ResultFilm[i].Titulo = firstJTokenInxJArray["Title"].ToString();
                        ResultFilm[i].Ano = Convert.ToInt16(Year);
                        ResultFilm[i].ID = firstJTokenInxJArray["imdbID"].ToString();
                        ResultFilm[i].Imagem = firstJTokenInxJArray["Poster"].ToString();
                    }
                }
            }
            return ResultFilm;
        }

        /// <summary>
        /// By ID or Title
        /// www.omdbapi.com/?i=tt0372784&apikey=18693fd6
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Filme ListarPorId(string id)
        {
            Filme ResultFilm = new Filme();

            using (WebClient webClient = new System.Net.WebClient())
            {
                var json = webClient.DownloadString("http://www.omdbapi.com/?i=" + id + "&apikey=18693fd6");
                var parentJObject = JObject.Parse(json);

                if (parentJObject.ContainsKey("Title"))
                {
                    ResultFilm.Titulo = parentJObject["Title"].ToString();
                    ResultFilm.Ano = (int)parentJObject["Year"];
                    ResultFilm.ID = parentJObject["imdbID"].ToString();
                    ResultFilm.Imagem = parentJObject["Poster"].ToString();
                }
            }

            return ResultFilm;
        }
    }

    public class Filme
    {
        /// <summary>
        /// Title
        /// </summary>
        public string Titulo { get; set; }
        /// <summary>
        /// Year
        /// </summary>
        public int? Ano { get; set; }
        /// <summary>
        /// imdbID
        /// </summary>
        public string ID { get; set; }
        /// <summary>
        /// Poster
        /// </summary>
        public string Imagem { get; set; }
    }
}
