.class Ljavafx/scene/control/Control$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Control.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Control;->tooltipProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/control/Tooltip;",
        ">;"
    }
.end annotation


# instance fields
.field private old:Ljavafx/scene/control/Tooltip;

.field final synthetic this$0:Ljavafx/scene/control/Control;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Control;)V
    .locals 4

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Control;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Control$2;->this$0:Ljavafx/scene/control/Control;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 334
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/Control$2;->old:Ljavafx/scene/control/Tooltip;

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Control$2;->this$0:Ljavafx/scene/control/Control;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control$2;
    const-string v1, "tooltip"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control$2;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Control$2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Tooltip;

    move-object v1, v2

    .line 338
    .local v1, "t":Ljavafx/scene/control/Tooltip;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control$2;->old:Ljavafx/scene/control/Tooltip;

    if-eq v2, v3, :cond_2

    .line 339
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Control$2;->old:Ljavafx/scene/control/Tooltip;

    if-eqz v2, :cond_0

    .line 340
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Control$2;->this$0:Ljavafx/scene/control/Control;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control$2;->old:Ljavafx/scene/control/Tooltip;

    invoke-static {v2, v3}, Ljavafx/scene/control/Tooltip;->uninstall(Ljavafx/scene/Node;Ljavafx/scene/control/Tooltip;)V

    .line 342
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 343
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Control$2;->this$0:Ljavafx/scene/control/Control;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/Tooltip;->install(Ljavafx/scene/Node;Ljavafx/scene/control/Tooltip;)V

    .line 345
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Control$2;->old:Ljavafx/scene/control/Tooltip;

    .line 347
    :cond_2
    return-void
.end method
