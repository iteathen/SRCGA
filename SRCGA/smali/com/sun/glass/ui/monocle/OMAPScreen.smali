.class Lcom/sun/glass/ui/monocle/OMAPScreen;
.super Lcom/sun/glass/ui/monocle/FBDevScreen;
.source "OMAPScreen.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPScreen;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/FBDevScreen;-><init>()V

    return-void
.end method
