.class Ljavafx/scene/control/Menu$1;
.super Ljavafx/beans/property/ReadOnlyBooleanWrapper;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Menu;->showingPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Menu;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Menu;)V
    .locals 4

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Menu;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Menu$1;->this$0:Ljavafx/scene/control/Menu;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Menu$1;->this$0:Ljavafx/scene/control/Menu;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu$1;
    const-string v1, "showing"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu$1;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Menu$1;->get()Z

    move-result v1

    .line 231
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Menu$1;->this$0:Ljavafx/scene/control/Menu;

    invoke-virtual {v1}, Ljavafx/scene/control/Menu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Menu$1;->this$0:Ljavafx/scene/control/Menu;

    invoke-virtual {v1}, Ljavafx/scene/control/Menu;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "showing"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Menu$1;->this$0:Ljavafx/scene/control/Menu;

    invoke-virtual {v1}, Ljavafx/scene/control/Menu;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "showing"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method
