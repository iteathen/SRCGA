.class Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;
.super Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
.source "ReadOnlyUnbackedObservableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->subList(II)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

.field final synthetic val$fromIndex:I

.field final synthetic val$outer:Ljava/util/List;

.field final synthetic val$toIndex:I


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;Ljava/util/List;II)V
    .locals 7

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;->this$0:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;->val$outer:Ljava/util/List;

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;->val$fromIndex:I

    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;->val$toIndex:I

    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;->val$outer:Ljava/util/List;

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;->val$fromIndex:I

    add-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;"
    return-object v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;->val$toIndex:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;->val$fromIndex:I

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;"
    return v0
.end method
