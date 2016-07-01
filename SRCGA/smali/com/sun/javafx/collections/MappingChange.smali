.class public final Lcom/sun/javafx/collections/MappingChange;
.super Ljavafx/collections/ListChangeListener$Change;
.source "MappingChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/collections/MappingChange$Map;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/ListChangeListener$Change",
        "<TF;>;"
    }
.end annotation


# static fields
.field public static final NOOP_MAP:Lcom/sun/javafx/collections/MappingChange$Map;


# instance fields
.field private final map:Lcom/sun/javafx/collections/MappingChange$Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/MappingChange$Map",
            "<TE;TF;>;"
        }
    .end annotation
.end field

.field private final original:Ljavafx/collections/ListChangeListener$Change;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;"
        }
    .end annotation
.end field

.field private removed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/sun/javafx/collections/MappingChange$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/collections/MappingChange$1;-><init>()V

    sput-object v0, Lcom/sun/javafx/collections/MappingChange;->NOOP_MAP:Lcom/sun/javafx/collections/MappingChange$Map;

    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ListChangeListener$Change;Lcom/sun/javafx/collections/MappingChange$Map;Ljavafx/collections/ObservableList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;",
            "Lcom/sun/javafx/collections/MappingChange$Map",
            "<TE;TF;>;",
            "Ljavafx/collections/ObservableList",
            "<TF;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    move-object v1, p1

    .local v1, "original":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v2, p2

    .local v2, "map":Lcom/sun/javafx/collections/MappingChange$Map;, "Lcom/sun/javafx/collections/MappingChange$Map<TE;TF;>;"
    move-object v3, p3

    .local v3, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TF;>;"
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Ljavafx/collections/ListChangeListener$Change;-><init>(Ljavafx/collections/ObservableList;)V

    .line 52
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/collections/MappingChange;->original:Ljavafx/collections/ListChangeListener$Change;

    .line 53
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/collections/MappingChange;->map:Lcom/sun/javafx/collections/MappingChange$Map;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/collections/MappingChange;)Ljavafx/collections/ListChangeListener$Change;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/MappingChange;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MappingChange;->original:Ljavafx/collections/ListChangeListener$Change;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/collections/MappingChange;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/collections/MappingChange;)Lcom/sun/javafx/collections/MappingChange$Map;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/MappingChange;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MappingChange;->map:Lcom/sun/javafx/collections/MappingChange$Map;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/collections/MappingChange;
    return-object v0
.end method


# virtual methods
.method public getFrom()I
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MappingChange;->original:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    return v0
.end method

.method public getPermutation(I)I
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/MappingChange;->original:Ljavafx/collections/ListChangeListener$Change;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/collections/ListChangeListener$Change;->getPermutation(I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    return v0
.end method

.method protected getPermutation()[I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    const/4 v1, 0x0

    new-array v1, v1, [I

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    return-object v0
.end method

.method public getRemoved()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MappingChange;->removed:Ljava/util/List;

    if-nez v1, :cond_0

    .line 79
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/collections/MappingChange$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/MappingChange$2;-><init>(Lcom/sun/javafx/collections/MappingChange;)V

    iput-object v2, v1, Lcom/sun/javafx/collections/MappingChange;->removed:Ljava/util/List;

    .line 92
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MappingChange;->removed:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    return-object v0
.end method

.method public getTo()I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MappingChange;->original:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    return v0
.end method

.method public next()Z
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MappingChange;->original:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MappingChange;->original:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    const/4 v5, 0x0

    move v1, v5

    .line 121
    .local v1, "posToEnd":I
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/collections/MappingChange;->next()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    .line 126
    .local v2, "size":I
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/collections/MappingChange;->reset()V

    .line 127
    :goto_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/collections/MappingChange;->next()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 130
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/collections/MappingChange;->reset()V

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v5

    .line 132
    .local v3, "b":Ljava/lang/StringBuilder;
    move-object v5, v3

    const-string v6, "{ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 133
    const/4 v5, 0x0

    move v4, v5

    .line 134
    .local v4, "pos":I
    :cond_2
    :goto_2
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/collections/MappingChange;->next()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 135
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/collections/MappingChange;->wasPermutated()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 136
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/collections/MappingChange;->getPermutation()[I

    move-result-object v6

    invoke-static {v6}, Lcom/sun/javafx/collections/ChangeHelper;->permChangeToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 142
    :goto_3
    move v5, v4

    move v6, v2

    if-eq v5, v6, :cond_2

    .line 143
    move-object v5, v3

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_2

    .line 137
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/collections/MappingChange;->wasUpdated()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 138
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/collections/MappingChange;->getFrom()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/collections/MappingChange;->getTo()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sun/javafx/collections/ChangeHelper;->updateChangeToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_3

    .line 140
    :cond_4
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/collections/MappingChange;->getFrom()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/collections/MappingChange;->getTo()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/collections/MappingChange;->getList()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/collections/MappingChange;->getRemoved()Ljava/util/List;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/collections/ChangeHelper;->addRemoveChangeToString(IILjava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_3

    .line 146
    :cond_5
    move-object v5, v3

    const-string v6, " }"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 148
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/collections/MappingChange;->reset()V

    .line 149
    move v5, v2

    move v6, v1

    sub-int/2addr v5, v6

    move v4, v5

    .line 150
    :goto_4
    move v5, v4

    add-int/lit8 v4, v4, -0x1

    if-lez v5, :cond_6

    .line 151
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/collections/MappingChange;->next()Z

    move-result v5

    goto :goto_4

    .line 154
    :cond_6
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    return-object v0
.end method

.method public wasPermutated()Z
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MappingChange;->original:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    return v0
.end method

.method public wasUpdated()Z
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MappingChange;->original:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->wasUpdated()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/MappingChange;, "Lcom/sun/javafx/collections/MappingChange<TE;TF;>;"
    return v0
.end method
