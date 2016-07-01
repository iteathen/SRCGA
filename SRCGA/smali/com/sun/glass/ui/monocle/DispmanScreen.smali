.class Lcom/sun/glass/ui/monocle/DispmanScreen;
.super Lcom/sun/glass/ui/monocle/FBDevScreen;
.source "DispmanScreen.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/DispmanScreen;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/FBDevScreen;-><init>()V

    .line 34
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/DispmanScreen;->wrapNativeSymbols()V

    .line 35
    return-void
.end method

.method private native wrapNativeSymbols()V
.end method
