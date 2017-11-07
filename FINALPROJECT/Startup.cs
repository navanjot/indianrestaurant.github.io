using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FINALPROJECT.Startup))]
namespace FINALPROJECT
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
