.class Ljavafx/scene/control/Dialog$2;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Dialog;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Dialog;)V
    .locals 4

    .prologue
    .line 657
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog$2;, "Ljavafx/scene/control/Dialog$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Dialog;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Dialog$2;->this$0:Ljavafx/scene/control/Dialog;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/SimpleObjectProperty;-><init>()V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 2

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog$2;, "Ljavafx/scene/control/Dialog$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog$2;->this$0:Ljavafx/scene/control/Dialog;

    invoke-virtual {v1}, Ljavafx/scene/control/Dialog;->close()V

    .line 660
    return-void
.end method
