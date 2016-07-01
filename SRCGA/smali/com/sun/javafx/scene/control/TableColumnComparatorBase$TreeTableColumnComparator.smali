.class public final Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator;
.super Lcom/sun/javafx/scene/control/TableColumnComparatorBase;
.source "TableColumnComparatorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/TableColumnComparatorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TreeTableColumnComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/TableColumnComparatorBase",
        "<TS;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator<TS;TT;>;"
    move-object v1, p1

    .local v1, "columns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TreeTableColumn<TS;TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;-><init>(Ljava/util/List;)V

    .line 138
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/control/TreeTableColumn;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator<TS;TT;>;"
    move-object v1, p1

    .local v1, "columns":[Ljavafx/scene/control/TreeTableColumn;, "[Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/TableColumnComparatorBase;-><init>(Ljava/util/List;)V

    .line 134
    return-void
.end method


# virtual methods
.method public doCompare(Ljavafx/scene/control/TableColumnBase;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;TT;>;TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator<TS;TT;>;"
    move-object v1, p1

    .local v1, "tcb":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v2, p2

    .local v2, "value1":Ljava/lang/Object;, "TT;"
    move-object v3, p3

    .local v3, "value2":Ljava/lang/Object;, "TT;"
    move-object v6, v1

    check-cast v6, Ljavafx/scene/control/TreeTableColumn;

    move-object v4, v6

    .line 147
    .local v4, "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableColumn;->getComparator()Ljava/util/Comparator;

    move-result-object v6

    move-object v5, v6

    .line 148
    .local v5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    sget-object v6, Lcom/sun/javafx/scene/control/TableColumnComparatorBase$1;->$SwitchMap$javafx$scene$control$TreeTableColumn$SortType:[I

    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableColumn;->getSortType()Ljavafx/scene/control/TreeTableColumn$SortType;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableColumn$SortType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 152
    const/4 v6, 0x0

    move v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator<TS;TT;>;"
    :goto_0
    return v0

    .line 149
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator<TS;TT;>;"
    :pswitch_0
    move-object v6, v5

    move-object v7, v2

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 150
    :pswitch_1
    move-object v6, v5

    move-object v7, v3

    move-object v8, v2

    invoke-interface {v6, v7, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSortable(Ljavafx/scene/control/TableColumnBase;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<TS;TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator<TS;TT;>;"
    move-object v1, p1

    .local v1, "tcb":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;TT;>;"
    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeTableColumn;

    move-object v2, v3

    .line 142
    .local v2, "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableColumn;->getSortType()Ljavafx/scene/control/TreeTableColumn$SortType;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableColumn;->isSortable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator<TS;TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator;, "Lcom/sun/javafx/scene/control/TableColumnComparatorBase$TreeTableColumnComparator<TS;TT;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
