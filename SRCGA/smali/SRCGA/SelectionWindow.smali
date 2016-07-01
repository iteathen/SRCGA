.class public LSRCGA/SelectionWindow;
.super Ljava/lang/Object;
.source "SelectionWindow.java"


# direct methods
.method public constructor <init>(Ljavafx/scene/layout/StackPane;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":LSRCGA/SelectionWindow;
    move-object v1, p1

    .local v1, "stack":Ljavafx/scene/layout/StackPane;
    move-object v2, p2

    .local v2, "fxmlfile":Ljava/lang/String;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 19
    :try_start_0
    new-instance v5, Ljavafx/fxml/FXMLLoader;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader;-><init>(Ljava/net/URL;)V

    move-object v3, v5

    .line 21
    .local v3, "l":Ljavafx/fxml/FXMLLoader;
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/fxml/FXMLLoader;->load()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Parent;

    move-object v4, v5

    .line 23
    .local v4, "t":Ljavafx/scene/Parent;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 27
    .line 29
    .end local v3    # "l":Ljavafx/fxml/FXMLLoader;
    .end local v4    # "t":Ljavafx/scene/Parent;
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 26
    .local v3, "e":Ljava/lang/Exception;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
