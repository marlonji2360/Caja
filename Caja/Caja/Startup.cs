using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Caja.Startup))]
namespace Caja
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
