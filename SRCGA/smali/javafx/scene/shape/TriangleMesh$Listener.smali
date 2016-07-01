.class Ljavafx/scene/shape/TriangleMesh$Listener;
.super Ljava/lang/Object;
.source "TriangleMesh.java"

# interfaces
.implements Ljavafx/collections/ArrayChangeListener;
.implements Lcom/sun/javafx/collections/FloatArraySyncer;
.implements Lcom/sun/javafx/collections/IntegerArraySyncer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/shape/TriangleMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljavafx/collections/ObservableArray",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/collections/ArrayChangeListener",
        "<TT;>;",
        "Lcom/sun/javafx/collections/FloatArraySyncer;",
        "Lcom/sun/javafx/collections/IntegerArraySyncer;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final array:Ljavafx/collections/ObservableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected dirty:Z

.field protected dirtyInFull:Z

.field protected dirtyRangeFrom:I

.field protected dirtyRangeLength:I

.field final synthetic this$0:Ljavafx/scene/shape/TriangleMesh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 844
    const-class v0, Ljavafx/scene/shape/TriangleMesh;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/scene/shape/TriangleMesh$Listener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/scene/shape/TriangleMesh;Ljavafx/collections/ObservableArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh$Listener;, "Ljavafx/scene/shape/TriangleMesh$Listener<TT;>;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "array":Ljavafx/collections/ObservableArray;, "TT;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/shape/TriangleMesh$Listener;->this$0:Ljavafx/scene/shape/TriangleMesh;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 847
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/shape/TriangleMesh$Listener;->dirty:Z

    .line 852
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyInFull:Z

    .line 857
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/shape/TriangleMesh$Listener;->array:Ljavafx/collections/ObservableArray;

    .line 858
    move-object v3, v2

    move-object v4, v0

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableArray;->addListener(Ljavafx/collections/ArrayChangeListener;)V

    .line 859
    return-void
.end method


# virtual methods
.method protected final addDirtyRange(II)V
    .locals 8

    .prologue
    .line 867
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh$Listener;, "Ljavafx/scene/shape/TriangleMesh$Listener<TT;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "length":I
    move v5, v2

    if-lez v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyInFull:Z

    if-nez v5, :cond_0

    .line 868
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/shape/TriangleMesh$Listener;->markDirty()V

    .line 869
    move-object v5, v0

    iget v5, v5, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeLength:I

    if-nez v5, :cond_1

    .line 870
    move-object v5, v0

    move v6, v1

    iput v6, v5, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeFrom:I

    .line 871
    move-object v5, v0

    move v6, v2

    iput v6, v5, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeLength:I

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    move-object v5, v0

    iget v5, v5, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeFrom:I

    move v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v3, v5

    .line 874
    .local v3, "fromIndex":I
    move-object v5, v0

    iget v5, v5, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeFrom:I

    move-object v6, v0

    iget v6, v6, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeLength:I

    add-int/2addr v5, v6

    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v5

    .line 875
    .local v4, "toIndex":I
    move-object v5, v0

    move v6, v3

    iput v6, v5, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeFrom:I

    .line 876
    move-object v5, v0

    move v6, v4

    move v7, v3

    sub-int/2addr v6, v7

    iput v6, v5, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeLength:I

    goto :goto_0
.end method

.method protected markDirty()V
    .locals 3

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh$Listener;, "Ljavafx/scene/shape/TriangleMesh$Listener<TT;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/shape/TriangleMesh$Listener;->dirty:Z

    .line 883
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh$Listener;->this$0:Ljavafx/scene/shape/TriangleMesh;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/TriangleMesh;->setDirty(Z)V

    .line 884
    return-void
.end method

.method public onChanged(Ljavafx/collections/ObservableArray;ZII)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZII)V"
        }
    .end annotation

    .prologue
    .line 888
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh$Listener;, "Ljavafx/scene/shape/TriangleMesh$Listener<TT;>;"
    move-object v1, p1

    .local v1, "observableArray":Ljavafx/collections/ObservableArray;, "TT;"
    move v2, p2

    .local v2, "sizeChanged":Z
    move v3, p3

    .local v3, "from":I
    move v4, p4

    .local v4, "to":I
    move v5, v2

    if-eqz v5, :cond_0

    .line 889
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/shape/TriangleMesh$Listener;->setDirty(Z)V

    .line 893
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/shape/TriangleMesh$Listener;->this$0:Ljavafx/scene/shape/TriangleMesh;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljavafx/scene/shape/TriangleMesh;->access$202(Ljavafx/scene/shape/TriangleMesh;Z)Z

    move-result v5

    .line 894
    return-void

    .line 891
    :cond_0
    move-object v5, v0

    move v6, v3

    move v7, v4

    move v8, v3

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/TriangleMesh$Listener;->addDirtyRange(II)V

    goto :goto_0
.end method

.method public final setDirty(Z)V
    .locals 8

    .prologue
    .line 901
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh$Listener;, "Ljavafx/scene/shape/TriangleMesh$Listener<TT;>;"
    move v1, p1

    .local v1, "dirty":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyInFull:Z

    .line 902
    move v2, v1

    if-eqz v2, :cond_0

    .line 903
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/TriangleMesh$Listener;->markDirty()V

    .line 904
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeFrom:I

    .line 905
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/TriangleMesh$Listener;->array:Ljavafx/collections/ObservableArray;

    invoke-interface {v3}, Ljavafx/collections/ObservableArray;->size()I

    move-result v3

    iput v3, v2, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeLength:I

    .line 910
    :goto_0
    return-void

    .line 907
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/shape/TriangleMesh$Listener;->dirty:Z

    .line 908
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeLength:I

    iput v3, v2, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeFrom:I

    goto :goto_0
.end method

.method public syncTo([F[I)[F
    .locals 10

    .prologue
    .line 914
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh$Listener;, "Ljavafx/scene/shape/TriangleMesh$Listener<TT;>;"
    move-object v1, p1

    .local v1, "array":[F
    move-object v2, p2

    .local v2, "fromAndLengthIndices":[I
    sget-boolean v4, Ljavafx/scene/shape/TriangleMesh$Listener;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    array-length v4, v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 915
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/TriangleMesh$Listener;->array:Ljavafx/collections/ObservableArray;

    check-cast v4, Ljavafx/collections/ObservableFloatArray;

    move-object v3, v4

    .line 916
    .local v3, "floatArray":Ljavafx/collections/ObservableFloatArray;
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyInFull:Z

    if-nez v4, :cond_2

    move-object v4, v1

    if-eqz v4, :cond_2

    move-object v4, v1

    array-length v4, v4

    move-object v5, v3

    invoke-interface {v5}, Ljavafx/collections/ObservableFloatArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 918
    :cond_2
    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 919
    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v3

    invoke-interface {v6}, Ljavafx/collections/ObservableFloatArray;->size()I

    move-result v6

    aput v6, v4, v5

    .line 920
    move-object v4, v3

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableFloatArray;->toArray([F)[F

    move-result-object v4

    move-object v0, v4

    .line 925
    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh$Listener;, "Ljavafx/scene/shape/TriangleMesh$Listener<TT;>;"
    :goto_0
    return-object v0

    .line 922
    .restart local v0    # "this":Ljavafx/scene/shape/TriangleMesh$Listener;, "Ljavafx/scene/shape/TriangleMesh$Listener<TT;>;"
    :cond_3
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeFrom:I

    aput v6, v4, v5

    .line 923
    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeLength:I

    aput v6, v4, v5

    .line 924
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeFrom:I

    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeFrom:I

    move-object v8, v0

    iget v8, v8, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeLength:I

    invoke-interface {v4, v5, v6, v7, v8}, Ljavafx/collections/ObservableFloatArray;->copyTo(I[FII)V

    .line 925
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method public syncTo([I[I)[I
    .locals 10

    .prologue
    .line 930
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh$Listener;, "Ljavafx/scene/shape/TriangleMesh$Listener<TT;>;"
    move-object v1, p1

    .local v1, "array":[I
    move-object v2, p2

    .local v2, "fromAndLengthIndices":[I
    sget-boolean v4, Ljavafx/scene/shape/TriangleMesh$Listener;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    array-length v4, v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 931
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/TriangleMesh$Listener;->array:Ljavafx/collections/ObservableArray;

    check-cast v4, Ljavafx/collections/ObservableIntegerArray;

    move-object v3, v4

    .line 932
    .local v3, "intArray":Ljavafx/collections/ObservableIntegerArray;
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyInFull:Z

    if-nez v4, :cond_2

    move-object v4, v1

    if-eqz v4, :cond_2

    move-object v4, v1

    array-length v4, v4

    move-object v5, v3

    invoke-interface {v5}, Ljavafx/collections/ObservableIntegerArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 933
    :cond_2
    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 934
    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v3

    invoke-interface {v6}, Ljavafx/collections/ObservableIntegerArray;->size()I

    move-result v6

    aput v6, v4, v5

    .line 936
    move-object v4, v3

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableIntegerArray;->toArray([I)[I

    move-result-object v4

    move-object v0, v4

    .line 941
    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh$Listener;, "Ljavafx/scene/shape/TriangleMesh$Listener<TT;>;"
    :goto_0
    return-object v0

    .line 938
    .restart local v0    # "this":Ljavafx/scene/shape/TriangleMesh$Listener;, "Ljavafx/scene/shape/TriangleMesh$Listener<TT;>;"
    :cond_3
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeFrom:I

    aput v6, v4, v5

    .line 939
    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeLength:I

    aput v6, v4, v5

    .line 940
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeFrom:I

    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeFrom:I

    move-object v8, v0

    iget v8, v8, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyRangeLength:I

    invoke-interface {v4, v5, v6, v7, v8}, Ljavafx/collections/ObservableIntegerArray;->copyTo(I[III)V

    .line 941
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method
