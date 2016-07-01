.class public Lcom/sun/javafx/sg/prism/NGAmbientLight;
.super Lcom/sun/javafx/sg/prism/NGLightBase;
.source "NGAmbientLight.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGAmbientLight;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGLightBase;-><init>()V

    .line 34
    return-void
.end method
