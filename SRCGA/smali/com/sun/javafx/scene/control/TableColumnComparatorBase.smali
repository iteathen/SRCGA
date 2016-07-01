.class public abstract Lcom/sun/javafx/scene/control/TableColumnComparatorBase;
.super Ljava/lang/Object;
.source "TableColumnComparatorBase.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator;,
        Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TableColumnComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private final columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "columns":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;->columns:Ljava/util/List;

    .line 49
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/control/TableColumnBase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "columns":[Ljavafx/scene/control/TableColumnBase;, "[Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;-><init>(Ljava/util/List;)V

    .line 45
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;)I"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "o1":Ljava/lang/Object;, "TS;"
    move-object v2, p2

    .local v2, "o2":Ljava/lang/Object;, "TS;"
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;->columns:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_0
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TableColumnBase;

    move-object v4, v8

    .line 58
    .local v4, "tc":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;->isSortable(Ljavafx/scene/control/TableColumnBase;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    move-object v8, v4

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TableColumnBase;->getCellData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .line 61
    .local v5, "value1":Ljava/lang/Object;, "TT;"
    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TableColumnBase;->getCellData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 63
    .local v6, "value2":Ljava/lang/Object;, "TT;"
    move-object v8, v0

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v8, v9, v10, v11}, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;->doCompare(Ljavafx/scene/control/TableColumnBase;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    move v7, v8

    .line 65
    .local v7, "result":I
    move v8, v7

    if-eqz v8, :cond_1

    .line 66
    move v8, v7

    move v0, v8

    .line 69
    .end local v0    # "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase<TS;TT;>;"
    .end local v4    # "tc":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    .end local v5    # "value1":Ljava/lang/Object;, "TT;"
    .end local v6    # "value2":Ljava/lang/Object;, "TT;"
    .end local v7    # "result":I
    :goto_1
    return v0

    .line 68
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase<TS;TT;>;"
    .restart local v4    # "tc":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    .restart local v5    # "value1":Ljava/lang/Object;, "TT;"
    .restart local v6    # "value2":Ljava/lang/Object;, "TT;"
    .restart local v7    # "result":I
    :cond_1
    goto :goto_0

    .line 69
    .end local v4    # "tc":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    .end local v5    # "value1":Ljava/lang/Object;, "TT;"
    .end local v6    # "value2":Ljava/lang/Object;, "TT;"
    .end local v7    # "result":I
    :cond_2
    const/4 v8, 0x0

    move v0, v8

    goto :goto_1
.end method

.method public abstract doCompare(Ljavafx/scene/control/TableColumnBase;Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;TT;>;TT;TT;)I"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase<TS;TT;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 80
    const/4 v3, 0x0

    move v0, v3

    .line 89
    .end local v0    # "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase<TS;TT;>;"
    :goto_0
    return v0

    .line 82
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase<TS;TT;>;"
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 83
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 85
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;

    move-object v2, v3

    .line 86
    .local v2, "other":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;->columns:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;->columns:Ljava/util/List;

    if-eq v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;->columns:Ljava/util/List;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;->columns:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;->columns:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 87
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 89
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public getColumns()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;->columns:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase<TS;TT;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase<TS;TT;>;"
    const/4 v2, 0x7

    move v1, v2

    .line 74
    .local v1, "hash":I
    const/16 v2, 0x3b

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;->columns:Ljava/util/List;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;->columns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 75
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase<TS;TT;>;"
    return v0

    .line 74
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase<TS;TT;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public abstract isSortable(Ljavafx/scene/control/TableColumnBase;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;TT;>;)Z"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase<TS;TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableColumnComparatorBase [ columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;->getColumns()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase<TS;TT;>;"
    return-object v0
.end method
