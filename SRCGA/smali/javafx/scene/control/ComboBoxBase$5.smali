.class Ljavafx/scene/control/ComboBoxBase$5;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "ComboBoxBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ComboBoxBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/event/ActionEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ComboBoxBase;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ComboBoxBase;)V
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase$5;, "Ljavafx/scene/control/ComboBoxBase$5;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ComboBoxBase;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBoxBase$5;->this$0:Ljavafx/scene/control/ComboBoxBase;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase$5;, "Ljavafx/scene/control/ComboBoxBase$5;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase$5;->this$0:Ljavafx/scene/control/ComboBoxBase;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase$5;, "Ljavafx/scene/control/ComboBoxBase$5;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase$5;, "Ljavafx/scene/control/ComboBoxBase$5;"
    const-string v1, "onAction"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase$5;, "Ljavafx/scene/control/ComboBoxBase$5;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase$5;, "Ljavafx/scene/control/ComboBoxBase$5;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase$5;->this$0:Ljavafx/scene/control/ComboBoxBase;

    sget-object v2, Ljavafx/event/ActionEvent;->ACTION:Ljavafx/event/EventType;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase$5;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    invoke-static {v1, v2, v3}, Ljavafx/scene/control/ComboBoxBase;->access$300(Ljavafx/scene/control/ComboBoxBase;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 271
    return-void
.end method
