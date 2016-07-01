.class Lcom/sun/glass/ui/monocle/NullCursor;
.super Lcom/sun/glass/ui/monocle/NativeCursor;
.source "NullCursor.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NullCursor;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/NativeCursor;-><init>()V

    return-void
.end method


# virtual methods
.method getBestSize()Lcom/sun/glass/ui/Size;
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NullCursor;
    new-instance v1, Lcom/sun/glass/ui/Size;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Lcom/sun/glass/ui/Size;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NullCursor;
    return-object v0
.end method

.method setHotSpot(II)V
    .locals 0
    .param p1, "hotspotX"    # I
    .param p2, "hotspotY"    # I

    .prologue
    .line 55
    return-void
.end method

.method setImage([B)V
    .locals 0
    .param p1, "cursorImage"    # [B

    .prologue
    .line 47
    return-void
.end method

.method setLocation(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 51
    return-void
.end method

.method setVisibility(Z)V
    .locals 0
    .param p1, "visibility"    # Z

    .prologue
    .line 43
    return-void
.end method

.method shutdown()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
