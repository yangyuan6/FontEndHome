using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FontEndHomeAsp.Startup))]
namespace FontEndHomeAsp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
