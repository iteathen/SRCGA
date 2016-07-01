.class Ljavafx/scene/control/RadioMenuItem$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "RadioMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/RadioMenuItem;->toggleGroupProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/control/ToggleGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private old:Ljavafx/scene/control/ToggleGroup;

.field final synthetic this$0:Ljavafx/scene/control/RadioMenuItem;


# direct methods
.method constructor <init>(Ljavafx/scene/control/RadioMenuItem;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/RadioMenuItem;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/RadioMenuItem$1;->this$0:Ljavafx/scene/control/RadioMenuItem;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem$1;->this$0:Ljavafx/scene/control/RadioMenuItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/RadioMenuItem$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem$1;
    const-string v1, "toggleGroup"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/RadioMenuItem$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem$1;->old:Ljavafx/scene/control/ToggleGroup;

    if-eqz v1, :cond_0

    .line 154
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem$1;->old:Ljavafx/scene/control/ToggleGroup;

    invoke-virtual {v1}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/RadioMenuItem$1;->this$0:Ljavafx/scene/control/RadioMenuItem;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 156
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/RadioMenuItem$1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ToggleGroup;

    iput-object v2, v1, Ljavafx/scene/control/RadioMenuItem$1;->old:Ljavafx/scene/control/ToggleGroup;

    .line 157
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/RadioMenuItem$1;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/RadioMenuItem$1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ToggleGroup;

    invoke-virtual {v1}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/RadioMenuItem$1;->this$0:Ljavafx/scene/control/RadioMenuItem;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/RadioMenuItem$1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ToggleGroup;

    invoke-virtual {v1}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/RadioMenuItem$1;->this$0:Ljavafx/scene/control/RadioMenuItem;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 160
    :cond_1
    return-void
.end method
