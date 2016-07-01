.class Ljavafx/scene/control/CheckMenuItem$1;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "CheckMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/CheckMenuItem;->selectedProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/CheckMenuItem;


# direct methods
.method constructor <init>(Ljavafx/scene/control/CheckMenuItem;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItem$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/CheckMenuItem;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/CheckMenuItem$1;->this$0:Ljavafx/scene/control/CheckMenuItem;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItem$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckMenuItem$1;->this$0:Ljavafx/scene/control/CheckMenuItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckMenuItem$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItem$1;
    const-string v1, "selected"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckMenuItem$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItem$1;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CheckMenuItem$1;->get()Z

    move-result v1

    .line 147
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckMenuItem$1;->this$0:Ljavafx/scene/control/CheckMenuItem;

    invoke-virtual {v1}, Ljavafx/scene/control/CheckMenuItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckMenuItem$1;->this$0:Ljavafx/scene/control/CheckMenuItem;

    invoke-virtual {v1}, Ljavafx/scene/control/CheckMenuItem;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "selected"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckMenuItem$1;->this$0:Ljavafx/scene/control/CheckMenuItem;

    invoke-virtual {v1}, Ljavafx/scene/control/CheckMenuItem;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "selected"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method
