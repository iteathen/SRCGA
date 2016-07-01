.class public final Lcom/sun/javafx/css/StyleClassSet;
.super Lcom/sun/javafx/css/BitSet;
.source "StyleClassSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/BitSet",
        "<",
        "Lcom/sun/javafx/css/StyleClass;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final styleClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final styleClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/StyleClass;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    const-class v0, Lcom/sun/javafx/css/StyleClassSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/css/StyleClassSet;->$assertionsDisabled:Z

    .line 158
    new-instance v0, Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/sun/javafx/css/StyleClassSet;->styleClassMap:Ljava/util/Map;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/css/StyleClassSet;->styleClasses:Ljava/util/List;

    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/BitSet;-><init>()V

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    .local v1, "styleClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/css/BitSet;-><init>()V

    .line 47
    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    move v2, v6

    .line 48
    .local v2, "nMax":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "n":I
    :goto_1
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 49
    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 50
    .local v4, "styleClass":Ljava/lang/String;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 48
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 47
    .end local v2    # "nMax":I
    .end local v3    # "n":I
    .end local v4    # "styleClass":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 52
    .restart local v2    # "nMax":I
    .restart local v3    # "n":I
    .restart local v4    # "styleClass":Ljava/lang/String;
    :cond_2
    move-object v6, v4

    invoke-static {v6}, Lcom/sun/javafx/css/StyleClassSet;->getStyleClass(Ljava/lang/String;)Lcom/sun/javafx/css/StyleClass;

    move-result-object v6

    move-object v5, v6

    .line 53
    .local v5, "sc":Lcom/sun/javafx/css/StyleClass;
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/javafx/css/StyleClassSet;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    .line 56
    .end local v4    # "styleClass":Ljava/lang/String;
    .end local v5    # "sc":Lcom/sun/javafx/css/StyleClass;
    :cond_3
    return-void
.end method

.method static getStyleClass(I)Lcom/sun/javafx/css/StyleClass;
    .locals 3

    .prologue
    .line 151
    move v0, p0

    .local v0, "index":I
    const/4 v1, 0x0

    move v2, v0

    if-gt v1, v2, :cond_0

    move v1, v0

    sget-object v2, Lcom/sun/javafx/css/StyleClassSet;->styleClasses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 152
    sget-object v1, Lcom/sun/javafx/css/StyleClassSet;->styleClasses:Ljava/util/List;

    move v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/css/StyleClass;

    move-object v0, v1

    .line 154
    .end local v0    # "index":I
    :goto_0
    return-object v0

    .restart local v0    # "index":I
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method static getStyleClass(Ljava/lang/String;)Lcom/sun/javafx/css/StyleClass;
    .locals 10

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "styleClass":Ljava/lang/String;
    move-object v5, v0

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "styleClass cannot be null or empty String"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 129
    :cond_1
    const/4 v5, 0x0

    move-object v1, v5

    .line 131
    .local v1, "instance":Lcom/sun/javafx/css/StyleClass;
    sget-object v5, Lcom/sun/javafx/css/StyleClassSet;->styleClassMap:Ljava/util/Map;

    move-object v6, v0

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v2, v5

    .line 132
    .local v2, "value":Ljava/lang/Integer;
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_0
    move v3, v5

    .line 134
    .local v3, "index":I
    sget-object v5, Lcom/sun/javafx/css/StyleClassSet;->styleClasses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    .line 135
    .local v4, "size":I
    sget-boolean v5, Lcom/sun/javafx/css/StyleClassSet;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    move v5, v3

    move v6, v4

    if-lt v5, v6, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 132
    .end local v3    # "index":I
    .end local v4    # "size":I
    :cond_2
    const/4 v5, -0x1

    goto :goto_0

    .line 137
    .restart local v3    # "index":I
    .restart local v4    # "size":I
    :cond_3
    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_4

    .line 138
    sget-object v5, Lcom/sun/javafx/css/StyleClassSet;->styleClasses:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/css/StyleClass;

    move-object v1, v5

    .line 141
    :cond_4
    move-object v5, v1

    if-nez v5, :cond_5

    .line 142
    new-instance v5, Lcom/sun/javafx/css/StyleClass;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move v8, v4

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/StyleClass;-><init>(Ljava/lang/String;I)V

    move-object v1, v5

    .line 143
    sget-object v5, Lcom/sun/javafx/css/StyleClassSet;->styleClasses:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 144
    sget-object v5, Lcom/sun/javafx/css/StyleClassSet;->styleClassMap:Ljava/util/Map;

    move-object v6, v0

    move v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 147
    :cond_5
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "styleClass":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->addAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return v0
.end method

.method public bridge synthetic addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->addListener(Ljavafx/beans/InvalidationListener;)V

    return-void
.end method

.method public bridge synthetic addListener(Ljavafx/collections/SetChangeListener;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    return-void
.end method

.method protected cast(Ljava/lang/Object;)Lcom/sun/javafx/css/StyleClass;
    .locals 7

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 104
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "null arg"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/StyleClass;

    move-object v2, v3

    .line 107
    .local v2, "styleClass":Lcom/sun/javafx/css/StyleClass;
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return-object v0
.end method

.method protected bridge synthetic cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/StyleClassSet;->cast(Ljava/lang/Object;)Lcom/sun/javafx/css/StyleClass;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/css/BitSet;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return v0
.end method

.method public bridge synthetic containsAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return v0
.end method

.method protected getIndex(Lcom/sun/javafx/css/StyleClass;)I
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    .local v1, "t":Lcom/sun/javafx/css/StyleClass;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/css/StyleClass;->getIndex()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return v0
.end method

.method protected bridge synthetic getIndex(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/StyleClass;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/StyleClassSet;->getIndex(Lcom/sun/javafx/css/StyleClass;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return v0
.end method

.method protected getT(I)Lcom/sun/javafx/css/StyleClass;
    .locals 3

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    invoke-static {v2}, Lcom/sun/javafx/css/StyleClassSet;->getStyleClass(I)Lcom/sun/javafx/css/StyleClass;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return-object v0
.end method

.method protected bridge synthetic getT(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/StyleClassSet;->getT(I)Lcom/sun/javafx/css/StyleClass;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/css/BitSet;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/css/BitSet;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/css/BitSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return v0
.end method

.method public bridge synthetic removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->removeListener(Ljavafx/beans/InvalidationListener;)V

    return-void
.end method

.method public bridge synthetic removeListener(Ljavafx/collections/SetChangeListener;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    return-void
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return v0
.end method

.method public bridge synthetic size()I
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/css/BitSet;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/css/StyleClassSet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/javafx/css/StyleClass;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/css/StyleClassSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v10, v1

    array-length v10, v10

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/css/StyleClassSet;->size()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 68
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/css/StyleClassSet;->size()I

    move-result v10

    new-array v10, v10, [Lcom/sun/javafx/css/StyleClass;

    check-cast v10, [Ljava/lang/Object;

    move-object v1, v10

    .line 70
    :cond_0
    const/4 v10, 0x0

    move v2, v10

    .line 71
    .local v2, "index":I
    :goto_0
    move v10, v2

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/css/StyleClassSet;->getBits()[J

    move-result-object v11

    array-length v11, v11

    if-ge v10, v11, :cond_3

    .line 72
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/css/StyleClassSet;->getBits()[J

    move-result-object v10

    move v11, v2

    aget-wide v10, v10, v11

    move-wide v3, v10

    .line 73
    .local v3, "state":J
    const/4 v10, 0x0

    move v5, v10

    .local v5, "bit":I
    :goto_1
    move v10, v5

    const/16 v11, 0x40

    if-ge v10, v11, :cond_2

    .line 74
    const-wide/16 v10, 0x1

    move v12, v5

    shl-long/2addr v10, v12

    move-wide v6, v10

    .line 75
    .local v6, "mask":J
    move-wide v10, v3

    move-wide v12, v6

    and-long/2addr v10, v12

    move-wide v12, v6

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 76
    move v10, v2

    const/16 v11, 0x40

    mul-int/lit8 v10, v10, 0x40

    move v11, v5

    add-int/2addr v10, v11

    move v8, v10

    .line 77
    .local v8, "n":I
    move v10, v8

    invoke-static {v10}, Lcom/sun/javafx/css/StyleClassSet;->getStyleClass(I)Lcom/sun/javafx/css/StyleClass;

    move-result-object v10

    move-object v9, v10

    .line 78
    .local v9, "impl":Lcom/sun/javafx/css/StyleClass;
    move-object v10, v1

    move v11, v2

    add-int/lit8 v2, v2, 0x1

    move-object v12, v9

    aput-object v12, v10, v11

    .line 73
    .end local v8    # "n":I
    .end local v9    # "impl":Lcom/sun/javafx/css/StyleClass;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 82
    .end local v6    # "mask":J
    :cond_2
    goto :goto_0

    .line 83
    .end local v3    # "state":J
    .end local v5    # "bit":I
    :cond_3
    move-object v10, v1

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClassSet;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "style-classes: ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 90
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/css/StyleClassSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 91
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/css/StyleClass;>;"
    :cond_0
    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/css/StyleClass;

    invoke-virtual {v4}, Lcom/sun/javafx/css/StyleClass;->getStyleClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 93
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    move-object v3, v1

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0

    .line 97
    :cond_1
    move-object v3, v1

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 98
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClassSet;
    return-object v0
.end method
