.class Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$1;
.super Ljava/lang/Object;
.source "X11InputDeviceRegistry.java"

# interfaces
.implements Lcom/sun/glass/ui/monocle/InputDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$1;->this$0:Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public is5Way()Z
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$1;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$1;
    return v0
.end method

.method public isFullKeyboard()Z
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$1;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$1;
    return v0
.end method

.method public isMultiTouch()Z
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$1;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$1;
    return v0
.end method

.method public isRelative()Z
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$1;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$1;
    return v0
.end method

.method public isTouch()Z
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$1;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$1;
    return v0
.end method
