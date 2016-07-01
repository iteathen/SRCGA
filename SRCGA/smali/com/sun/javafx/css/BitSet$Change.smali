.class Lcom/sun/javafx/css/BitSet$Change;
.super Ljavafx/collections/SetChangeListener$Change;
.source "BitSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/BitSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Change"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/collections/SetChangeListener$Change",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final ELEMENT_ADDED:Z = false

.field private static final ELEMENT_REMOVED:Z = true


# instance fields
.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final removed:Z

.field final synthetic this$0:Lcom/sun/javafx/css/BitSet;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/css/BitSet;Ljava/lang/Object;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet$Change;, "Lcom/sun/javafx/css/BitSet<TT;>.Change;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TT;"
    move v3, p3

    .local v3, "removed":Z
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/css/BitSet$Change;->this$0:Lcom/sun/javafx/css/BitSet;

    .line 567
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Ljavafx/collections/FXCollections;->unmodifiableObservableSet(Ljavafx/collections/ObservableSet;)Ljavafx/collections/ObservableSet;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavafx/collections/SetChangeListener$Change;-><init>(Ljavafx/collections/ObservableSet;)V

    .line 568
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/css/BitSet$Change;->element:Ljava/lang/Object;

    .line 569
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/sun/javafx/css/BitSet$Change;->removed:Z

    .line 570
    return-void
.end method


# virtual methods
.method public getElementAdded()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet$Change;, "Lcom/sun/javafx/css/BitSet<TT;>.Change;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/css/BitSet$Change;->removed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/BitSet$Change;, "Lcom/sun/javafx/css/BitSet<TT;>.Change;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/css/BitSet$Change;, "Lcom/sun/javafx/css/BitSet<TT;>.Change;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/BitSet$Change;->element:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getElementRemoved()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet$Change;, "Lcom/sun/javafx/css/BitSet<TT;>.Change;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/css/BitSet$Change;->removed:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/BitSet$Change;->element:Ljava/lang/Object;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/BitSet$Change;, "Lcom/sun/javafx/css/BitSet<TT;>.Change;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/css/BitSet$Change;, "Lcom/sun/javafx/css/BitSet<TT;>.Change;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wasAdded()Z
    .locals 3

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet$Change;, "Lcom/sun/javafx/css/BitSet<TT;>.Change;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/css/BitSet$Change;->removed:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/BitSet$Change;, "Lcom/sun/javafx/css/BitSet<TT;>.Change;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/css/BitSet$Change;, "Lcom/sun/javafx/css/BitSet<TT;>.Change;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wasRemoved()Z
    .locals 2

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet$Change;, "Lcom/sun/javafx/css/BitSet<TT;>.Change;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/css/BitSet$Change;->removed:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/BitSet$Change;, "Lcom/sun/javafx/css/BitSet<TT;>.Change;"
    return v0
.end method
