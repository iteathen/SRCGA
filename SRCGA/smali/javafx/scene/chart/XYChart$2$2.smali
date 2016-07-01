.class Ljavafx/scene/chart/XYChart$2$2;
.super Lcom/sun/javafx/collections/NonIterableChange;
.source "XYChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/chart/XYChart$2;->invalidated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/NonIterableChange",
        "<",
        "Ljavafx/scene/chart/XYChart$Series",
        "<TX;TY;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/chart/XYChart$2;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/XYChart$2;IILjavafx/collections/ObservableList;)V
    .locals 9

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$2$2;, "Ljavafx/scene/chart/XYChart$2$2;"
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/chart/XYChart$2;
    move v2, p2

    .local v2, "x0":I
    move v3, p3

    .local v3, "x1":I
    move-object v4, p4

    .local v4, "x2":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/chart/XYChart$Series<TX;TY;>;>;"
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/chart/XYChart$2$2;->this$1:Ljavafx/scene/chart/XYChart$2;

    move-object v5, v0

    move v6, v2

    move v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/collections/NonIterableChange;-><init>(IILjavafx/collections/ObservableList;)V

    return-void
.end method


# virtual methods
.method protected getPermutation()[I
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$2$2;, "Ljavafx/scene/chart/XYChart$2$2;"
    const/4 v1, 0x0

    new-array v1, v1, [I

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$2$2;, "Ljavafx/scene/chart/XYChart$2$2;"
    return-object v0
.end method

.method public getRemoved()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;>;"
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$2$2;, "Ljavafx/scene/chart/XYChart$2$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$2$2;->this$1:Ljavafx/scene/chart/XYChart$2;

    invoke-static {v1}, Ljavafx/scene/chart/XYChart$2;->access$100(Ljavafx/scene/chart/XYChart$2;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$2$2;, "Ljavafx/scene/chart/XYChart$2$2;"
    return-object v0
.end method
