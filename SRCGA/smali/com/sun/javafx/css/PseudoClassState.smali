.class public final Lcom/sun/javafx/css/PseudoClassState;
.super Lcom/sun/javafx/css/BitSet;
.source "PseudoClassState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/BitSet",
        "<",
        "Ljavafx/css/PseudoClass;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final pseudoClassMap:Ljava/util/Map;
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

.field static final pseudoClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    const-class v0, Lcom/sun/javafx/css/PseudoClassState;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/css/PseudoClassState;->$assertionsDisabled:Z

    .line 168
    new-instance v0, Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/sun/javafx/css/PseudoClassState;->pseudoClassMap:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/css/PseudoClassState;->pseudoClasses:Ljava/util/List;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/BitSet;-><init>()V

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 7
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
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    .local v1, "pseudoClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/css/BitSet;-><init>()V

    .line 50
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    move v2, v5

    .line 51
    .local v2, "nMax":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "n":I
    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 52
    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/sun/javafx/css/PseudoClassState;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v5

    move-object v4, v5

    .line 53
    .local v4, "sc":Ljavafx/css/PseudoClass;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/css/PseudoClassState;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 50
    .end local v2    # "nMax":I
    .end local v3    # "n":I
    .end local v4    # "sc":Ljavafx/css/PseudoClass;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 55
    .restart local v2    # "nMax":I
    .restart local v3    # "n":I
    :cond_1
    return-void
.end method

.method static getPseudoClass(I)Ljavafx/css/PseudoClass;
    .locals 3

    .prologue
    .line 161
    move v0, p0

    .local v0, "index":I
    const/4 v1, 0x0

    move v2, v0

    if-gt v1, v2, :cond_0

    move v1, v0

    sget-object v2, Lcom/sun/javafx/css/PseudoClassState;->pseudoClasses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 162
    sget-object v1, Lcom/sun/javafx/css/PseudoClassState;->pseudoClasses:Ljava/util/List;

    move v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/css/PseudoClass;

    move-object v0, v1

    .line 164
    .end local v0    # "index":I
    :goto_0
    return-object v0

    .restart local v0    # "index":I
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;
    .locals 10

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "pseudoClass":Ljava/lang/String;
    move-object v5, v0

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "pseudoClass cannot be null or empty String"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    :cond_1
    const/4 v5, 0x0

    move-object v1, v5

    .line 141
    .local v1, "instance":Ljavafx/css/PseudoClass;
    sget-object v5, Lcom/sun/javafx/css/PseudoClassState;->pseudoClassMap:Ljava/util/Map;

    move-object v6, v0

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v2, v5

    .line 142
    .local v2, "value":Ljava/lang/Integer;
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_0
    move v3, v5

    .line 144
    .local v3, "index":I
    sget-object v5, Lcom/sun/javafx/css/PseudoClassState;->pseudoClasses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    .line 145
    .local v4, "size":I
    sget-boolean v5, Lcom/sun/javafx/css/PseudoClassState;->$assertionsDisabled:Z

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

    .line 142
    .end local v3    # "index":I
    .end local v4    # "size":I
    :cond_2
    const/4 v5, -0x1

    goto :goto_0

    .line 147
    .restart local v3    # "index":I
    .restart local v4    # "size":I
    :cond_3
    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_4

    .line 148
    sget-object v5, Lcom/sun/javafx/css/PseudoClassState;->pseudoClasses:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/css/PseudoClass;

    move-object v1, v5

    .line 151
    :cond_4
    move-object v5, v1

    if-nez v5, :cond_5

    .line 152
    new-instance v5, Lcom/sun/javafx/css/PseudoClassImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move v8, v4

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/PseudoClassImpl;-><init>(Ljava/lang/String;I)V

    move-object v1, v5

    .line 153
    sget-object v5, Lcom/sun/javafx/css/PseudoClassState;->pseudoClasses:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 154
    sget-object v5, Lcom/sun/javafx/css/PseudoClassState;->pseudoClassMap:Ljava/util/Map;

    move-object v6, v0

    move v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 157
    :cond_5
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "pseudoClass":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->addAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return v0
.end method

.method public bridge synthetic addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->addListener(Ljavafx/beans/InvalidationListener;)V

    return-void
.end method

.method public bridge synthetic addListener(Ljavafx/collections/SetChangeListener;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    return-void
.end method

.method protected bridge synthetic cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/PseudoClassState;->cast(Ljava/lang/Object;)Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return-object v0
.end method

.method protected cast(Ljava/lang/Object;)Ljavafx/css/PseudoClass;
    .locals 7

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 99
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "null arg"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :cond_0
    move-object v3, v1

    check-cast v3, Ljavafx/css/PseudoClass;

    move-object v2, v3

    .line 102
    .local v2, "pseudoClass":Ljavafx/css/PseudoClass;
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/css/BitSet;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return v0
.end method

.method public bridge synthetic containsAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return v0
.end method

.method protected bridge synthetic getIndex(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/css/PseudoClass;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/PseudoClassState;->getIndex(Ljavafx/css/PseudoClass;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return v0
.end method

.method protected getIndex(Ljavafx/css/PseudoClass;)I
    .locals 10

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    .local v1, "t":Ljavafx/css/PseudoClass;
    move-object v4, v1

    instance-of v4, v4, Lcom/sun/javafx/css/PseudoClassImpl;

    if-eqz v4, :cond_0

    .line 114
    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/css/PseudoClassImpl;

    invoke-virtual {v4}, Lcom/sun/javafx/css/PseudoClassImpl;->getIndex()I

    move-result v4

    move v0, v4

    .line 125
    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    :goto_0
    return v0

    .line 117
    .restart local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/css/PseudoClass;->getPseudoClassName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 118
    .local v2, "pseudoClass":Ljava/lang/String;
    sget-object v4, Lcom/sun/javafx/css/PseudoClassState;->pseudoClassMap:Ljava/util/Map;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v3, v4

    .line 120
    .local v3, "index":Ljava/lang/Integer;
    move-object v4, v3

    if-nez v4, :cond_1

    .line 121
    sget-object v4, Lcom/sun/javafx/css/PseudoClassState;->pseudoClasses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .line 122
    sget-object v4, Lcom/sun/javafx/css/PseudoClassState;->pseudoClasses:Ljava/util/List;

    new-instance v5, Lcom/sun/javafx/css/PseudoClassImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/PseudoClassImpl;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 123
    sget-object v4, Lcom/sun/javafx/css/PseudoClassState;->pseudoClassMap:Ljava/util/Map;

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 125
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method protected bridge synthetic getT(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/PseudoClassState;->getT(I)Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return-object v0
.end method

.method protected getT(I)Ljavafx/css/PseudoClass;
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    invoke-static {v2}, Lcom/sun/javafx/css/PseudoClassState;->getPseudoClass(I)Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/css/BitSet;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/css/BitSet;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/css/BitSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return v0
.end method

.method public bridge synthetic removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->removeListener(Ljavafx/beans/InvalidationListener;)V

    return-void
.end method

.method public bridge synthetic removeListener(Ljavafx/collections/SetChangeListener;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    return-void
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/css/BitSet;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return v0
.end method

.method public bridge synthetic size()I
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/css/BitSet;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/css/PseudoClassState;->size()I

    move-result v2

    new-array v2, v2, [Ljavafx/css/PseudoClass;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/css/PseudoClassState;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
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
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v10, v1

    array-length v10, v10

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/css/PseudoClassState;->size()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 67
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/css/PseudoClassState;->size()I

    move-result v10

    new-array v10, v10, [Ljavafx/css/PseudoClass;

    check-cast v10, [Ljava/lang/Object;

    move-object v1, v10

    .line 69
    :cond_0
    const/4 v10, 0x0

    move v2, v10

    .line 70
    .local v2, "index":I
    :goto_0
    move v10, v2

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/css/PseudoClassState;->getBits()[J

    move-result-object v11

    array-length v11, v11

    if-ge v10, v11, :cond_3

    .line 71
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/css/PseudoClassState;->getBits()[J

    move-result-object v10

    move v11, v2

    aget-wide v10, v10, v11

    move-wide v3, v10

    .line 72
    .local v3, "state":J
    const/4 v10, 0x0

    move v5, v10

    .local v5, "bit":I
    :goto_1
    move v10, v5

    const/16 v11, 0x40

    if-ge v10, v11, :cond_2

    .line 73
    const-wide/16 v10, 0x1

    move v12, v5

    shl-long/2addr v10, v12

    move-wide v6, v10

    .line 74
    .local v6, "mask":J
    move-wide v10, v3

    move-wide v12, v6

    and-long/2addr v10, v12

    move-wide v12, v6

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 75
    move v10, v2

    const/16 v11, 0x40

    mul-int/lit8 v10, v10, 0x40

    move v11, v5

    add-int/2addr v10, v11

    move v8, v10

    .line 76
    .local v8, "n":I
    move v10, v8

    invoke-static {v10}, Lcom/sun/javafx/css/PseudoClassState;->getPseudoClass(I)Ljavafx/css/PseudoClass;

    move-result-object v10

    move-object v9, v10

    .line 77
    .local v9, "impl":Ljavafx/css/PseudoClass;
    move-object v10, v1

    move v11, v2

    add-int/lit8 v2, v2, 0x1

    move-object v12, v9

    aput-object v12, v10, v11

    .line 72
    .end local v8    # "n":I
    .end local v9    # "impl":Ljavafx/css/PseudoClass;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 81
    .end local v6    # "mask":J
    :cond_2
    goto :goto_0

    .line 82
    .end local v3    # "state":J
    .end local v5    # "bit":I
    :cond_3
    move-object v10, v1

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassState;
    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 89
    .local v1, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/css/PseudoClassState;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 90
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/css/PseudoClass;>;"
    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/css/PseudoClass;

    invoke-virtual {v4}, Ljavafx/css/PseudoClass;->getPseudoClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 93
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassState;
    return-object v0
.end method
