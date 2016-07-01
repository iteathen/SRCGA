.class public Lcom/sun/javafx/sg/prism/NGPointLight;
.super Lcom/sun/javafx/sg/prism/NGLightBase;
.source "NGPointLight.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPointLight;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGLightBase;-><init>()V

    .line 34
    return-void
.end method
