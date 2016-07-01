.class Ljavafx/scene/control/MultipleSelectionModelBase$2;
.super Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
.source "MultipleSelectionModelBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/MultipleSelectionModelBase;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/MultipleSelectionModelBase;


# direct methods
.method constructor <init>(Ljavafx/scene/control/MultipleSelectionModelBase;)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$2;, "Ljavafx/scene/control/MultipleSelectionModelBase$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/MultipleSelectionModelBase;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MultipleSelectionModelBase$2;->this$0:Ljavafx/scene/control/MultipleSelectionModelBase;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$2;, "Ljavafx/scene/control/MultipleSelectionModelBase$2;"
    move v1, p1

    .local v1, "i":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase$2;->this$0:Ljavafx/scene/control/MultipleSelectionModelBase;

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndicesSeq:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v2, v3

    .line 107
    .local v2, "pos":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase$2;->this$0:Ljavafx/scene/control/MultipleSelectionModelBase;

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/MultipleSelectionModelBase;->getModelItem(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$2;, "Ljavafx/scene/control/MultipleSelectionModelBase$2;"
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$2;, "Ljavafx/scene/control/MultipleSelectionModelBase$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase$2;->this$0:Ljavafx/scene/control/MultipleSelectionModelBase;

    iget-object v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedIndices:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$2;, "Ljavafx/scene/control/MultipleSelectionModelBase$2;"
    return v0
.end method
