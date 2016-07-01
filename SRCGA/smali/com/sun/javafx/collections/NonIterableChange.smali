.class public abstract Lcom/sun/javafx/collections/NonIterableChange;
.super Ljavafx/collections/ListChangeListener$Change;
.source "NonIterableChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/collections/NonIterableChange$SimpleUpdateChange;,
        Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;,
        Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;,
        Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange;,
        Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/ListChangeListener$Change",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_PERM:[I


# instance fields
.field private final from:I

.field private invalid:Z

.field private final to:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/javafx/collections/NonIterableChange;->EMPTY_PERM:[I

    return-void
.end method

.method protected constructor <init>(IILjavafx/collections/ObservableList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange;, "Lcom/sun/javafx/collections/NonIterableChange<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, p3

    .local v3, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Ljavafx/collections/ListChangeListener$Change;-><init>(Ljavafx/collections/ObservableList;)V

    .line 37
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/collections/NonIterableChange;->invalid:Z

    .line 41
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/javafx/collections/NonIterableChange;->from:I

    .line 42
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/javafx/collections/NonIterableChange;->to:I

    .line 43
    return-void
.end method


# virtual methods
.method public checkState()V
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange;, "Lcom/sun/javafx/collections/NonIterableChange<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/collections/NonIterableChange;->invalid:Z

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Invalid Change state: next() must be called before inspecting the Change."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    return-void
.end method

.method public getFrom()I
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange;, "Lcom/sun/javafx/collections/NonIterableChange<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/NonIterableChange;->checkState()V

    .line 48
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/collections/NonIterableChange;->from:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange;, "Lcom/sun/javafx/collections/NonIterableChange<TE;>;"
    return v0
.end method

.method protected getPermutation()[I
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange;, "Lcom/sun/javafx/collections/NonIterableChange<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/NonIterableChange;->checkState()V

    .line 62
    sget-object v1, Lcom/sun/javafx/collections/NonIterableChange;->EMPTY_PERM:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange;, "Lcom/sun/javafx/collections/NonIterableChange<TE;>;"
    return-object v0
.end method

.method public getTo()I
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange;, "Lcom/sun/javafx/collections/NonIterableChange<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/NonIterableChange;->checkState()V

    .line 54
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/collections/NonIterableChange;->to:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange;, "Lcom/sun/javafx/collections/NonIterableChange<TE;>;"
    return v0
.end method

.method public next()Z
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange;, "Lcom/sun/javafx/collections/NonIterableChange<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/collections/NonIterableChange;->invalid:Z

    if-eqz v1, :cond_0

    .line 68
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/collections/NonIterableChange;->invalid:Z

    .line 69
    const/4 v1, 0x1

    move v0, v1

    .line 71
    .end local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange;, "Lcom/sun/javafx/collections/NonIterableChange<TE;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange;, "Lcom/sun/javafx/collections/NonIterableChange<TE;>;"
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange;, "Lcom/sun/javafx/collections/NonIterableChange<TE;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/collections/NonIterableChange;->invalid:Z

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange;, "Lcom/sun/javafx/collections/NonIterableChange<TE;>;"
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/collections/NonIterableChange;->invalid:Z

    move v1, v3

    .line 88
    .local v1, "oldInvalid":Z
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/collections/NonIterableChange;->invalid:Z

    .line 90
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/collections/NonIterableChange;->wasPermutated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/collections/NonIterableChange;->getPermutation()[I

    move-result-object v3

    invoke-static {v3}, Lcom/sun/javafx/collections/ChangeHelper;->permChangeToString([I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 97
    .local v2, "ret":Ljava/lang/String;
    :goto_0
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/sun/javafx/collections/NonIterableChange;->invalid:Z

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange;, "Lcom/sun/javafx/collections/NonIterableChange<TE;>;"
    return-object v0

    .line 92
    .end local v2    # "ret":Ljava/lang/String;
    .restart local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange;, "Lcom/sun/javafx/collections/NonIterableChange<TE;>;"
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/collections/NonIterableChange;->wasUpdated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/collections/NonIterableChange;->from:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/NonIterableChange;->to:I

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ChangeHelper;->updateChangeToString(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 95
    .end local v2    # "ret":Ljava/lang/String;
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/collections/NonIterableChange;->from:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/NonIterableChange;->to:I

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/collections/NonIterableChange;->getList()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/collections/NonIterableChange;->getRemoved()Ljava/util/List;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/sun/javafx/collections/ChangeHelper;->addRemoveChangeToString(IILjava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_0
.end method
