.class public Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;
.super Ljava/util/AbstractMap;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader$UnknownTypeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnknownValueMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "items"
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljavafx/fxml/FXMLLoader$UnknownTypeElement;

.field private values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/fxml/FXMLLoader$UnknownTypeElement;)V
    .locals 6

    .prologue
    .line 1026
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/fxml/FXMLLoader$UnknownTypeElement;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;->this$1:Ljavafx/fxml/FXMLLoader$UnknownTypeElement;

    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractMap;-><init>()V

    .line 1027
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;->items:Ljava/util/ArrayList;

    .line 1028
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;->values:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1055
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1032
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1033
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1036
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljavafx/beans/DefaultProperty;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Ljavafx/beans/DefaultProperty;

    invoke-interface {v3}, Ljavafx/beans/DefaultProperty;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;->items:Ljava/util/ArrayList;

    .line 1037
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;
    return-object v0

    .line 1036
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;->values:Ljava/util/HashMap;

    move-object v3, v1

    .line 1037
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1025
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1042
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 1043
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1046
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljavafx/beans/DefaultProperty;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Ljavafx/beans/DefaultProperty;

    invoke-interface {v4}, Ljavafx/beans/DefaultProperty;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1047
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1050
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;->values:Ljava/util/HashMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;
    return-object v0
.end method
