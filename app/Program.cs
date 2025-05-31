using Microsoft.AspNetCore.Builder;
var app = WebApplication.Create();
app.MapGet("/", () => "Hello from Internal Dev Platform!");
app.Run();