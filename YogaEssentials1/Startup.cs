using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(YogaEssentials1.Startup))]
namespace YogaEssentials1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
