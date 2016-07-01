.class public Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;
.super Ljava/lang/Object;
.source "TableColumnSortTypeWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSortTypeName(Ljavafx/scene/control/TableColumnBase;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v3, v0

    instance-of v3, v3, Ljavafx/scene/control/TableColumn;

    if-eqz v3, :cond_1

    .line 69
    move-object v3, v0

    check-cast v3, Ljavafx/scene/control/TableColumn;

    move-object v1, v3

    .line 70
    .local v1, "tc":Ljavafx/scene/control/TableColumn;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumn;->getSortType()Ljavafx/scene/control/TableColumn$SortType;

    move-result-object v3

    move-object v2, v3

    .line 71
    .local v2, "st":Ljavafx/scene/control/TableColumn$SortType;
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .line 77
    .end local v0    # "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    .local v1, "tc":Ljavafx/scene/control/TreeTableColumn;
    .local v2, "st":Ljavafx/scene/control/TreeTableColumn$SortType;
    :goto_1
    return-object v0

    .line 71
    .restart local v0    # "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    .local v1, "tc":Ljavafx/scene/control/TableColumn;
    .local v2, "st":Ljavafx/scene/control/TableColumn$SortType;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumn$SortType;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 72
    .end local v1    # "tc":Ljavafx/scene/control/TableColumn;
    .end local v2    # "st":Ljavafx/scene/control/TableColumn$SortType;
    :cond_1
    move-object v3, v0

    instance-of v3, v3, Ljavafx/scene/control/TreeTableColumn;

    if-eqz v3, :cond_3

    .line 73
    move-object v3, v0

    check-cast v3, Ljavafx/scene/control/TreeTableColumn;

    move-object v1, v3

    .line 74
    .local v1, "tc":Ljavafx/scene/control/TreeTableColumn;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableColumn;->getSortType()Ljavafx/scene/control/TreeTableColumn$SortType;

    move-result-object v3

    move-object v2, v3

    .line 75
    .local v2, "st":Ljavafx/scene/control/TreeTableColumn$SortType;
    move-object v3, v2

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_2
    move-object v0, v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableColumn$SortType;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 77
    .end local v1    # "tc":Ljavafx/scene/control/TreeTableColumn;
    .end local v2    # "st":Ljavafx/scene/control/TreeTableColumn$SortType;
    :cond_3
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public static getSortTypeProperty(Ljavafx/scene/control/TableColumnBase;)Ljavafx/beans/value/ObservableValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;)",
            "Ljavafx/beans/value/ObservableValue;"
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v1, v0

    instance-of v1, v1, Ljavafx/scene/control/TableColumn;

    if-eqz v1, :cond_0

    .line 82
    move-object v1, v0

    check-cast v1, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v1}, Ljavafx/scene/control/TableColumn;->sortTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .line 86
    .end local v0    # "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :goto_0
    return-object v0

    .line 83
    .restart local v0    # "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/scene/control/TreeTableColumn;

    if-eqz v1, :cond_1

    .line 84
    move-object v1, v0

    check-cast v1, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableColumn;->sortTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static isAscending(Ljavafx/scene/control/TableColumnBase;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->getSortTypeName(Ljavafx/scene/control/TableColumnBase;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 43
    .local v1, "sortTypeName":Ljava/lang/String;
    const-string v2, "ASCENDING"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    return v0
.end method

.method public static isDescending(Ljavafx/scene/control/TableColumnBase;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/scene/control/TableColumnSortTypeWrapper;->getSortTypeName(Ljavafx/scene/control/TableColumnBase;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 48
    .local v1, "sortTypeName":Ljava/lang/String;
    const-string v2, "DESCENDING"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    return v0
.end method

.method public static setSortType(Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/control/TableColumn$SortType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;",
            "Ljavafx/scene/control/TableColumn$SortType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v1, p1

    .local v1, "sortType":Ljavafx/scene/control/TableColumn$SortType;
    move-object v3, v0

    instance-of v3, v3, Ljavafx/scene/control/TableColumn;

    if-eqz v3, :cond_1

    .line 53
    move-object v3, v0

    check-cast v3, Ljavafx/scene/control/TableColumn;

    move-object v2, v3

    .line 54
    .local v2, "tc":Ljavafx/scene/control/TableColumn;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableColumn;->setSortType(Ljavafx/scene/control/TableColumn$SortType;)V

    .line 55
    .line 65
    .end local v2    # "tc":Ljavafx/scene/control/TableColumn;
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    move-object v3, v0

    instance-of v3, v3, Ljavafx/scene/control/TreeTableColumn;

    if-eqz v3, :cond_0

    .line 56
    move-object v3, v0

    check-cast v3, Ljavafx/scene/control/TreeTableColumn;

    move-object v2, v3

    .line 57
    .local v2, "tc":Ljavafx/scene/control/TreeTableColumn;
    move-object v3, v1

    sget-object v4, Ljavafx/scene/control/TableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TableColumn$SortType;

    if-ne v3, v4, :cond_2

    .line 58
    move-object v3, v2

    sget-object v4, Ljavafx/scene/control/TreeTableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TreeTableColumn$SortType;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableColumn;->setSortType(Ljavafx/scene/control/TreeTableColumn$SortType;)V

    goto :goto_0

    .line 59
    :cond_2
    move-object v3, v1

    sget-object v4, Ljavafx/scene/control/TableColumn$SortType;->DESCENDING:Ljavafx/scene/control/TableColumn$SortType;

    if-ne v3, v4, :cond_3

    .line 60
    move-object v3, v2

    sget-object v4, Ljavafx/scene/control/TreeTableColumn$SortType;->DESCENDING:Ljavafx/scene/control/TreeTableColumn$SortType;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableColumn;->setSortType(Ljavafx/scene/control/TreeTableColumn$SortType;)V

    goto :goto_0

    .line 61
    :cond_3
    move-object v3, v1

    if-nez v3, :cond_0

    .line 62
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableColumn;->setSortType(Ljavafx/scene/control/TreeTableColumn$SortType;)V

    goto :goto_0
.end method
