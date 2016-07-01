.class abstract Ljavafx/scene/control/FXDialog;
.super Ljava/lang/Object;
.source "FXDialog.java"


# instance fields
.field protected owner:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/FXDialog;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method abstract focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
.end method

.method public abstract getModality()Ljavafx/stage/Modality;
.end method

.method public abstract getOwner()Ljavafx/stage/Window;
.end method

.method public abstract getRoot()Ljavafx/scene/Node;
.end method

.method abstract getSceneHeight()D
.end method

.method abstract getStyle()Ljavafx/stage/StageStyle;
.end method

.method public abstract getWindow()Ljavafx/stage/Window;
.end method

.method public abstract getX()D
.end method

.method public abstract getY()D
.end method

.method abstract heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
.end method

.method public abstract initModality(Ljavafx/stage/Modality;)V
.end method

.method public abstract initOwner(Ljavafx/stage/Window;)V
.end method

.method abstract initStyle(Ljavafx/stage/StageStyle;)V
.end method

.method public requestPermissionToClose(Ljavafx/scene/control/Dialog;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/Dialog",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/FXDialog;
    move-object v1, p1

    .local v1, "dialog":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<*>;"
    const/4 v8, 0x1

    move v2, v8

    .line 84
    .local v2, "denyClose":Z
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/Dialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v8

    move-object v3, v8

    .line 85
    .local v3, "dialogPane":Ljavafx/scene/control/DialogPane;
    move-object v8, v3

    if-eqz v8, :cond_0

    .line 86
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/DialogPane;->getButtonTypes()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v4, v8

    .line 87
    .local v4, "buttons":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/ButtonType;>;"
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 88
    const/4 v8, 0x0

    move v2, v8

    .line 110
    .end local v4    # "buttons":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/ButtonType;>;"
    :cond_0
    :goto_0
    move v8, v2

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_1
    move v0, v8

    .end local v0    # "this":Ljavafx/scene/control/FXDialog;
    return v0

    .line 91
    .restart local v0    # "this":Ljavafx/scene/control/FXDialog;
    .restart local v4    # "buttons":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/ButtonType;>;"
    :cond_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_2
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ButtonType;

    move-object v6, v8

    .line 92
    .local v6, "button":Ljavafx/scene/control/ButtonType;
    move-object v8, v6

    if-nez v8, :cond_2

    goto :goto_2

    .line 94
    :cond_2
    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/scene/control/ButtonType;->getButtonData()Ljavafx/scene/control/ButtonBar$ButtonData;

    move-result-object v8

    move-object v7, v8

    .line 95
    .local v7, "type":Ljavafx/scene/control/ButtonBar$ButtonData;
    move-object v8, v7

    if-nez v8, :cond_3

    goto :goto_2

    .line 102
    :cond_3
    move-object v8, v7

    sget-object v9, Ljavafx/scene/control/ButtonBar$ButtonData;->CANCEL_CLOSE:Ljavafx/scene/control/ButtonBar$ButtonData;

    if-eq v8, v9, :cond_4

    move-object v8, v7

    invoke-virtual {v8}, Ljavafx/scene/control/ButtonBar$ButtonData;->isCancelButton()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 103
    :cond_4
    const/4 v8, 0x0

    move v2, v8

    .line 104
    goto :goto_0

    .line 106
    :cond_5
    goto :goto_2

    .line 110
    .end local v4    # "buttons":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/ButtonType;>;"
    .end local v6    # "button":Ljavafx/scene/control/ButtonType;
    .end local v7    # "type":Ljavafx/scene/control/ButtonBar$ButtonData;
    :cond_6
    const/4 v8, 0x0

    goto :goto_1
.end method

.method abstract resizableProperty()Ljavafx/beans/property/BooleanProperty;
.end method

.method public abstract setDialogPane(Ljavafx/scene/control/DialogPane;)V
.end method

.method abstract setHeight(D)V
.end method

.method abstract setWidth(D)V
.end method

.method public abstract setX(D)V
.end method

.method public abstract setY(D)V
.end method

.method public abstract show()V
.end method

.method public abstract showAndWait()V
.end method

.method public abstract showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
.end method

.method public abstract sizeToScene()V
.end method

.method abstract titleProperty()Ljavafx/beans/property/StringProperty;
.end method

.method abstract widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
.end method

.method public abstract xProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
.end method

.method public abstract yProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
.end method
