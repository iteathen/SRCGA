.class Lcom/sun/glass/ui/monocle/VNCPlatform$1$1;
.super Ljava/lang/Object;
.source "VNCPlatform.java"

# interfaces
.implements Lcom/sun/glass/ui/monocle/InputDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/VNCPlatform$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/glass/ui/monocle/VNCPlatform$1;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/VNCPlatform$1;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCPlatform$1$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/glass/ui/monocle/VNCPlatform$1;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/VNCPlatform$1$1;->this$1:Lcom/sun/glass/ui/monocle/VNCPlatform$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public is5Way()Z
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCPlatform$1$1;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/VNCPlatform$1$1;
    return v0
.end method

.method public isFullKeyboard()Z
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCPlatform$1$1;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/VNCPlatform$1$1;
    return v0
.end method

.method public isMultiTouch()Z
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCPlatform$1$1;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/VNCPlatform$1$1;
    return v0
.end method

.method public isRelative()Z
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCPlatform$1$1;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/VNCPlatform$1$1;
    return v0
.end method

.method public isTouch()Z
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCPlatform$1$1;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/VNCPlatform$1$1;
    return v0
.end method
