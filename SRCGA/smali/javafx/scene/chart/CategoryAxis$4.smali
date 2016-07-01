.class Ljavafx/scene/chart/CategoryAxis$4;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "CategoryAxis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/CategoryAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/collections/ObservableList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field old:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/chart/CategoryAxis;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/CategoryAxis;)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/CategoryAxis;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/CategoryAxis$4;->this$0:Ljavafx/scene/chart/CategoryAxis;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis$4;->this$0:Ljavafx/scene/chart/CategoryAxis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis$4;
    const-string v1, "categories"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis$4;
    return-object v0
.end method

.method protected invalidated()V
    .locals 7

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis$4;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/CategoryAxis$4;->this$0:Ljavafx/scene/chart/CategoryAxis;

    invoke-static {v2}, Ljavafx/scene/chart/CategoryAxis;->access$300(Ljavafx/scene/chart/CategoryAxis;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 175
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate category added; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/CategoryAxis$4;->this$0:Ljavafx/scene/chart/CategoryAxis;

    invoke-static {v5}, Ljavafx/scene/chart/CategoryAxis;->access$300(Ljavafx/scene/chart/CategoryAxis;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already present"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/CategoryAxis$4;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableList;

    move-object v1, v2

    .line 178
    .local v1, "newItems":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/String;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/CategoryAxis$4;->old:Ljavafx/collections/ObservableList;

    move-object v3, v1

    if-eq v2, v3, :cond_3

    .line 180
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/CategoryAxis$4;->old:Ljavafx/collections/ObservableList;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/CategoryAxis$4;->old:Ljavafx/collections/ObservableList;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/CategoryAxis$4;->this$0:Ljavafx/scene/chart/CategoryAxis;

    invoke-static {v3}, Ljavafx/scene/chart/CategoryAxis;->access$400(Ljavafx/scene/chart/CategoryAxis;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 181
    :cond_1
    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/CategoryAxis$4;->this$0:Ljavafx/scene/chart/CategoryAxis;

    invoke-static {v3}, Ljavafx/scene/chart/CategoryAxis;->access$400(Ljavafx/scene/chart/CategoryAxis;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 182
    :cond_2
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/CategoryAxis$4;->old:Ljavafx/collections/ObservableList;

    .line 184
    :cond_3
    return-void
.end method
