using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MyTunes_ChristianHapgood.Startup))]
namespace MyTunes_ChristianHapgood
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
