.class Lcom/sun/glass/ui/monocle/VNCPlatform$1;
.super Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
.source "VNCPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/glass/ui/monocle/VNCPlatform;->createInputDeviceRegistry()Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/glass/ui/monocle/VNCPlatform;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/VNCPlatform;)V
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCPlatform$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/glass/ui/monocle/VNCPlatform;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/VNCPlatform$1;->this$0:Lcom/sun/glass/ui/monocle/VNCPlatform;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/InputDeviceRegistry;-><init>()V

    .line 36
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/VNCPlatform$1;->devices:Ljavafx/collections/ObservableSet;

    new-instance v3, Lcom/sun/glass/ui/monocle/VNCPlatform$1$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/VNCPlatform$1$1;-><init>(Lcom/sun/glass/ui/monocle/VNCPlatform$1;)V

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableSet;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 43
    return-void
.end method
