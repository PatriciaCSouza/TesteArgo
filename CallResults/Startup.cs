using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CallResults.Startup))]
namespace CallResults
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
