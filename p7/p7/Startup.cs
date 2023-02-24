using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(p7.Startup))]
namespace p7
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
