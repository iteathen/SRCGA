.class Ljavafx/scene/Scene$9;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Scene;->rootProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/Parent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 1082
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$9;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$9;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method

.method private forceUnbind()V
    .locals 3

    .prologue
    .line 1085
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$9;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unbinding illegal root."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1086
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Scene$9;->unbind()V

    .line 1087
    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1127
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$9;->this$0:Ljavafx/scene/Scene;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$9;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$9;
    const-string v1, "root"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$9;
    return-object v0
.end method

.method protected invalidated()V
    .locals 9

    .prologue
    .line 1091
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene$9;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Scene$9;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/Parent;

    move-object v2, v3

    .line 1093
    .local v2, "_value":Ljavafx/scene/Parent;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 1094
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Scene$9;->isBound()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/Scene$9;->forceUnbind()V

    .line 1095
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Scene\'s root cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1098
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1099
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Scene$9;->isBound()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/Scene$9;->forceUnbind()V

    .line 1100
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is already inside a scene-graph and cannot be set as root"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1103
    :cond_3
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Parent;->getClipParent()Ljavafx/scene/Node;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1104
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Scene$9;->isBound()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/Scene$9;->forceUnbind()V

    .line 1105
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is set as a clip on another node, so cannot be set as root"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1108
    :cond_5
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Parent;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    if-eqz v3, :cond_7

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Parent;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v4, v2

    if-ne v3, v4, :cond_7

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Parent;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Scene$9;->this$0:Ljavafx/scene/Scene;

    if-eq v3, v4, :cond_7

    .line 1109
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Scene$9;->isBound()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/Scene$9;->forceUnbind()V

    .line 1110
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is already set as root of another scene"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1114
    :cond_7
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Scene$9;->this$0:Ljavafx/scene/Scene;

    iget-object v3, v3, Ljavafx/scene/Scene;->oldRoot:Ljavafx/scene/Parent;

    if-eqz v3, :cond_8

    .line 1115
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Scene$9;->this$0:Ljavafx/scene/Scene;

    iget-object v3, v3, Ljavafx/scene/Scene;->oldRoot:Ljavafx/scene/Parent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljavafx/scene/Parent;->setScenes(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Z)V

    .line 1117
    :cond_8
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Scene$9;->this$0:Ljavafx/scene/Scene;

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/Scene;->oldRoot:Ljavafx/scene/Parent;

    .line 1118
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Parent;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "root"

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    .line 1119
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Scene$9;->this$0:Ljavafx/scene/Scene;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Ljavafx/scene/Parent;->setScenes(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Z)V

    .line 1120
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Scene$9;->this$0:Ljavafx/scene/Scene;

    sget-object v4, Ljavafx/scene/Scene$DirtyBits;->ROOT_DIRTY:Ljavafx/scene/Scene$DirtyBits;

    invoke-static {v3, v4}, Ljavafx/scene/Scene;->access$1100(Ljavafx/scene/Scene;Ljavafx/scene/Scene$DirtyBits;)V

    .line 1121
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Scene$9;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getWidth()D

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Scene$9;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getHeight()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/Parent;->resize(DD)V

    .line 1122
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Parent;->requestLayout()V

    .line 1123
    return-void
.end method
