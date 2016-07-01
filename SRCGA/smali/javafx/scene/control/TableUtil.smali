.class Ljavafx/scene/control/TableUtil;
.super Ljava/lang/Object;
.source "TableUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/TableUtil$SortEventType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static addColumnsListener(Ljava/util/List;Ljavafx/collections/ListChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;",
            "Ljavafx/collections/ListChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase;>;"
    move-object v1, p1

    .local v1, "cl":Ljavafx/collections/ListChangeListener;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_0
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TableColumnBase;

    move-object v3, v4

    .line 111
    .local v3, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 112
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v1

    invoke-static {v4, v5}, Ljavafx/scene/control/TableUtil;->addColumnsListener(Ljava/util/List;Ljavafx/collections/ListChangeListener;)V

    .line 113
    goto :goto_1

    .line 114
    .end local v3    # "col":Ljavafx/scene/control/TableColumnBase;
    :cond_1
    goto :goto_0
.end method

.method static addTableColumnListener(Ljava/util/List;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase;>;"
    move-object v1, p1

    .local v1, "columnVisibleObserver":Ljavafx/beans/InvalidationListener;
    move-object v2, p2

    .local v2, "columnSortableObserver":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "columnSortTypeObserver":Ljavafx/beans/InvalidationListener;
    move-object/from16 v4, p4

    .local v4, "columnComparatorObserver":Ljavafx/beans/InvalidationListener;
    move-object v7, v0

    if-nez v7, :cond_0

    .line 96
    :goto_0
    return-void

    .line 79
    :cond_0
    move-object v7, v0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_1
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TableColumnBase;

    move-object v6, v7

    .line 80
    .local v6, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/control/TableColumnBase;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 81
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/control/TableColumnBase;->sortableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 82
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/control/TableColumnBase;->comparatorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 84
    move-object v7, v6

    instance-of v7, v7, Ljavafx/scene/control/TableColumn;

    if-eqz v7, :cond_2

    .line 85
    move-object v7, v6

    check-cast v7, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v7}, Ljavafx/scene/control/TableColumn;->sortTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 90
    :cond_1
    :goto_2
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Ljavafx/scene/control/TableUtil;->addTableColumnListener(Ljava/util/List;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    .line 95
    goto :goto_1

    .line 86
    :cond_2
    move-object v7, v6

    instance-of v7, v7, Ljavafx/scene/control/TreeTableColumn;

    if-eqz v7, :cond_1

    .line 87
    move-object v7, v6

    check-cast v7, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableColumn;->sortTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_2

    .line 96
    .end local v6    # "col":Ljavafx/scene/control/TableColumnBase;
    :cond_3
    goto :goto_0
.end method

.method static constrainedResize(Ljavafx/scene/control/ResizeFeaturesBase;ZDLjava/util/List;)Z
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ResizeFeaturesBase;",
            "ZD",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;>;)Z"
        }
    .end annotation

    .prologue
    .line 196
    move-object/from16 v3, p0

    .local v3, "prop":Ljavafx/scene/control/ResizeFeaturesBase;
    move/from16 v4, p1

    .local v4, "isFirstRun":Z
    move-wide/from16 v5, p2

    .local v5, "tableWidth":D
    move-object/from16 v7, p4

    .local v7, "visibleLeafColumns":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase<**>;>;"
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/control/ResizeFeaturesBase;->getColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v34

    move-object/from16 v8, v34

    .line 197
    .local v8, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/control/ResizeFeaturesBase;->getDelta()Ljava/lang/Double;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v34

    move-wide/from16 v9, v34

    .line 211
    .local v9, "delta":D
    const-wide/16 v34, 0x0

    move-wide/from16 v14, v34

    .line 212
    .local v14, "totalLowerBound":D
    const-wide/16 v34, 0x0

    move-wide/from16 v16, v34

    .line 214
    .local v16, "totalUpperBound":D
    move-wide/from16 v34, v5

    const-wide/16 v36, 0x0

    cmpl-double v34, v34, v36

    if-nez v34, :cond_0

    const/16 v34, 0x0

    move/from16 v3, v34

    .line 360
    .end local v3    # "prop":Ljavafx/scene/control/ResizeFeaturesBase;
    :goto_0
    return v3

    .line 221
    .restart local v3    # "prop":Ljavafx/scene/control/ResizeFeaturesBase;
    :cond_0
    const-wide/16 v34, 0x0

    move-wide/from16 v18, v34

    .line 222
    .local v18, "colWidth":D
    move-object/from16 v34, v7

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    move-object/from16 v20, v34

    :goto_1
    move-object/from16 v34, v20

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1

    move-object/from16 v34, v20

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljavafx/scene/control/TableColumnBase;

    move-object/from16 v21, v34

    .line 223
    .local v21, "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-wide/from16 v34, v18

    move-object/from16 v36, v21

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v36

    add-double v34, v34, v36

    move-wide/from16 v18, v34

    .line 224
    goto :goto_1

    .line 226
    .end local v21    # "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :cond_1
    move-wide/from16 v34, v18

    move-wide/from16 v36, v5

    sub-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->abs(D)D

    move-result-wide v34

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    cmpl-double v34, v34, v36

    if-lez v34, :cond_8

    .line 227
    move-wide/from16 v34, v18

    move-wide/from16 v36, v5

    cmpl-double v34, v34, v36

    if-lez v34, :cond_2

    const/16 v34, 0x1

    :goto_2
    move/from16 v11, v34

    .line 228
    .local v11, "isShrinking":Z
    move-wide/from16 v34, v5

    move-wide/from16 v12, v34

    .line 230
    .local v12, "target":D
    move/from16 v34, v4

    if-eqz v34, :cond_9

    .line 233
    move-object/from16 v34, v7

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    move-object/from16 v20, v34

    :goto_3
    move-object/from16 v34, v20

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_3

    move-object/from16 v34, v20

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljavafx/scene/control/TableColumnBase;

    move-object/from16 v21, v34

    .line 234
    .restart local v21    # "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-wide/from16 v34, v14

    move-object/from16 v36, v21

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/control/TableColumnBase;->getMinWidth()D

    move-result-wide v36

    add-double v34, v34, v36

    move-wide/from16 v14, v34

    .line 235
    move-wide/from16 v34, v16

    move-object/from16 v36, v21

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/control/TableColumnBase;->getMaxWidth()D

    move-result-wide v36

    add-double v34, v34, v36

    move-wide/from16 v16, v34

    .line 236
    goto :goto_3

    .line 227
    .end local v11    # "isShrinking":Z
    .end local v12    # "target":D
    .end local v21    # "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :cond_2
    const/16 v34, 0x0

    goto :goto_2

    .line 239
    .restart local v11    # "isShrinking":Z
    .restart local v12    # "target":D
    :cond_3
    move-wide/from16 v34, v16

    const-wide/high16 v36, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v34, v34, v36

    if-nez v34, :cond_4

    const-wide v34, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_4
    move-wide/from16 v16, v34

    .line 243
    move-object/from16 v34, v7

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    move-object/from16 v20, v34

    :goto_5
    move-object/from16 v34, v20

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_7

    move-object/from16 v34, v20

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljavafx/scene/control/TableColumnBase;

    move-object/from16 v21, v34

    .line 244
    .local v21, "col":Ljavafx/scene/control/TableColumnBase;
    move-object/from16 v34, v21

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/control/TableColumnBase;->getMinWidth()D

    move-result-wide v34

    move-wide/from16 v22, v34

    .line 245
    .local v22, "lowerBound":D
    move-object/from16 v34, v21

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/control/TableColumnBase;->getMaxWidth()D

    move-result-wide v34

    move-wide/from16 v24, v34

    .line 251
    .local v24, "upperBound":D
    move-wide/from16 v34, v14

    move-wide/from16 v36, v16

    sub-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->abs(D)D

    move-result-wide v34

    const-wide v36, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v34, v34, v36

    if-gez v34, :cond_6

    .line 252
    move-wide/from16 v34, v22

    move-wide/from16 v26, v34

    .line 258
    .local v26, "newSize":D
    :goto_6
    move-object/from16 v34, v21

    move-wide/from16 v35, v26

    move-object/from16 v37, v21

    invoke-virtual/range {v37 .. v37}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v37

    sub-double v35, v35, v37

    invoke-static/range {v34 .. v36}, Ljavafx/scene/control/TableUtil;->resize(Ljavafx/scene/control/TableColumnBase;D)D

    move-result-wide v34

    move-wide/from16 v28, v34

    .line 260
    .local v28, "remainder":D
    move-wide/from16 v34, v12

    move-wide/from16 v36, v26

    move-wide/from16 v38, v28

    add-double v36, v36, v38

    sub-double v34, v34, v36

    move-wide/from16 v12, v34

    .line 261
    move-wide/from16 v34, v14

    move-wide/from16 v36, v22

    sub-double v34, v34, v36

    move-wide/from16 v14, v34

    .line 262
    move-wide/from16 v34, v16

    move-wide/from16 v36, v24

    sub-double v34, v34, v36

    move-wide/from16 v16, v34

    .line 263
    goto :goto_5

    .line 239
    .end local v21    # "col":Ljavafx/scene/control/TableColumnBase;
    .end local v22    # "lowerBound":D
    .end local v24    # "upperBound":D
    .end local v26    # "newSize":D
    .end local v28    # "remainder":D
    :cond_4
    move-wide/from16 v34, v16

    const-wide/high16 v36, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v34, v34, v36

    if-nez v34, :cond_5

    const-wide/16 v34, 0x1

    goto :goto_4

    :cond_5
    move-wide/from16 v34, v16

    goto :goto_4

    .line 254
    .restart local v21    # "col":Ljavafx/scene/control/TableColumnBase;
    .restart local v22    # "lowerBound":D
    .restart local v24    # "upperBound":D
    :cond_6
    move-wide/from16 v34, v12

    move-wide/from16 v36, v14

    sub-double v34, v34, v36

    move-wide/from16 v36, v16

    move-wide/from16 v38, v14

    sub-double v36, v36, v38

    div-double v34, v34, v36

    move-wide/from16 v28, v34

    .line 255
    .local v28, "f":D
    move-wide/from16 v34, v22

    move-wide/from16 v36, v28

    move-wide/from16 v38, v24

    move-wide/from16 v40, v22

    sub-double v38, v38, v40

    mul-double v36, v36, v38

    add-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->round(D)J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-double v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v26, v34

    .restart local v26    # "newSize":D
    goto :goto_6

    .line 265
    .end local v21    # "col":Ljavafx/scene/control/TableColumnBase;
    .end local v22    # "lowerBound":D
    .end local v24    # "upperBound":D
    .end local v26    # "newSize":D
    .end local v28    # "f":D
    :cond_7
    const/16 v34, 0x0

    move/from16 v4, v34

    .line 281
    .end local v11    # "isShrinking":Z
    .end local v12    # "target":D
    :cond_8
    :goto_7
    move-object/from16 v34, v8

    if-nez v34, :cond_a

    .line 282
    const/16 v34, 0x0

    move/from16 v3, v34

    goto/16 :goto_0

    .line 267
    .restart local v11    # "isShrinking":Z
    .restart local v12    # "target":D
    :cond_9
    move-wide/from16 v34, v5

    move-wide/from16 v36, v18

    sub-double v34, v34, v36

    move-wide/from16 v20, v34

    .line 268
    .local v20, "actualDelta":D
    move-object/from16 v34, v7

    move-object/from16 v22, v34

    .line 269
    .local v22, "cols":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase<**>;>;"
    move-object/from16 v34, v22

    move-wide/from16 v35, v20

    invoke-static/range {v34 .. v36}, Ljavafx/scene/control/TableUtil;->resizeColumns(Ljava/util/List;D)D

    move-result-wide v34

    goto :goto_7

    .line 290
    .end local v11    # "isShrinking":Z
    .end local v12    # "target":D
    .end local v20    # "actualDelta":D
    .end local v22    # "cols":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase<**>;>;"
    :cond_a
    move-wide/from16 v34, v9

    const-wide/16 v36, 0x0

    cmpg-double v34, v34, v36

    if-gez v34, :cond_b

    const/16 v34, 0x1

    :goto_8
    move/from16 v11, v34

    .line 295
    .restart local v11    # "isShrinking":Z
    move-object/from16 v34, v8

    move-object/from16 v20, v34

    .line 296
    .local v20, "leafColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :goto_9
    move-object/from16 v34, v20

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljavafx/collections/ObservableList;->size()I

    move-result v34

    if-lez v34, :cond_c

    .line 297
    move-object/from16 v34, v20

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v34

    move-object/from16 v35, v20

    invoke-virtual/range {v35 .. v35}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljavafx/collections/ObservableList;->size()I

    move-result v35

    const/16 v36, 0x1

    add-int/lit8 v35, v35, -0x1

    invoke-interface/range {v34 .. v35}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljavafx/scene/control/TableColumnBase;

    move-object/from16 v20, v34

    goto :goto_9

    .line 290
    .end local v11    # "isShrinking":Z
    .end local v20    # "leafColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :cond_b
    const/16 v34, 0x0

    goto :goto_8

    .line 300
    .restart local v11    # "isShrinking":Z
    .restart local v20    # "leafColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :cond_c
    move-object/from16 v34, v7

    move-object/from16 v35, v20

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v34

    move/from16 v21, v34

    .line 301
    .local v21, "colPos":I
    move-object/from16 v34, v7

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v34

    const/16 v35, 0x1

    add-int/lit8 v34, v34, -0x1

    move/from16 v22, v34

    .line 313
    .local v22, "endColPos":I
    move-wide/from16 v34, v9

    move-wide/from16 v23, v34

    .line 314
    .local v23, "remainingDelta":D
    :goto_a
    move/from16 v34, v22

    move/from16 v35, v21

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_13

    move-wide/from16 v34, v23

    const-wide/16 v36, 0x0

    cmpl-double v34, v34, v36

    if-eqz v34, :cond_13

    .line 315
    move-object/from16 v34, v7

    move/from16 v35, v22

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljavafx/scene/control/TableColumnBase;

    move-object/from16 v25, v34

    .line 316
    .local v25, "resizingCol":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    add-int/lit8 v22, v22, -0x1

    .line 319
    move-object/from16 v34, v25

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/control/TableColumnBase;->isResizable()Z

    move-result v34

    if-nez v34, :cond_d

    goto :goto_a

    .line 322
    :cond_d
    move/from16 v34, v11

    if-eqz v34, :cond_f

    move-object/from16 v34, v20

    :goto_b
    move-object/from16 v26, v34

    .line 323
    .local v26, "shrinkingCol":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move/from16 v34, v11

    if-nez v34, :cond_10

    move-object/from16 v34, v20

    :goto_c
    move-object/from16 v27, v34

    .line 327
    .local v27, "growingCol":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object/from16 v34, v27

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v34

    move-object/from16 v36, v27

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/control/TableColumnBase;->getPrefWidth()D

    move-result-wide v36

    cmpl-double v34, v34, v36

    if-lez v34, :cond_e

    .line 330
    move-object/from16 v34, v7

    move/from16 v35, v21

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    move/from16 v36, v22

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    invoke-interface/range {v34 .. v36}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v34

    move-object/from16 v28, v34

    .line 331
    .local v28, "seq":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase;>;"
    move-object/from16 v34, v28

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v34

    const/16 v35, 0x1

    add-int/lit8 v34, v34, -0x1

    move/from16 v29, v34

    .local v29, "i":I
    :goto_d
    move/from16 v34, v29

    if-ltz v34, :cond_e

    .line 332
    move-object/from16 v34, v28

    move/from16 v35, v29

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljavafx/scene/control/TableColumnBase;

    move-object/from16 v30, v34

    .line 333
    .local v30, "c":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object/from16 v34, v30

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v34

    move-object/from16 v36, v30

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/control/TableColumnBase;->getPrefWidth()D

    move-result-wide v36

    cmpg-double v34, v34, v36

    if-gez v34, :cond_11

    .line 334
    move-object/from16 v34, v30

    move-object/from16 v27, v34

    .line 351
    .end local v28    # "seq":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase;>;"
    .end local v29    # "i":I
    .end local v30    # "c":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :cond_e
    move-wide/from16 v34, v23

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->abs(D)D

    move-result-wide v34

    move-object/from16 v36, v26

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v36

    move-object/from16 v38, v26

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/control/TableColumnBase;->getMinWidth()D

    move-result-wide v38

    sub-double v36, v36, v38

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->min(DD)D

    move-result-wide v34

    move-wide/from16 v28, v34

    .line 356
    .local v28, "sdiff":D
    move-object/from16 v34, v26

    move-wide/from16 v35, v28

    move-wide/from16 v0, v35

    neg-double v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v34 .. v36}, Ljavafx/scene/control/TableUtil;->resize(Ljavafx/scene/control/TableColumnBase;D)D

    move-result-wide v34

    move-wide/from16 v30, v34

    .line 357
    .local v30, "delta1":D
    move-object/from16 v34, v27

    move-wide/from16 v35, v28

    invoke-static/range {v34 .. v36}, Ljavafx/scene/control/TableUtil;->resize(Ljavafx/scene/control/TableColumnBase;D)D

    move-result-wide v34

    move-wide/from16 v32, v34

    .line 358
    .local v32, "delta2":D
    move-wide/from16 v34, v23

    move/from16 v36, v11

    if-eqz v36, :cond_12

    move-wide/from16 v36, v28

    :goto_e
    add-double v34, v34, v36

    move-wide/from16 v23, v34

    .line 359
    goto/16 :goto_a

    .line 322
    .end local v26    # "shrinkingCol":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    .end local v27    # "growingCol":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    .end local v28    # "sdiff":D
    .end local v30    # "delta1":D
    .end local v32    # "delta2":D
    :cond_f
    move-object/from16 v34, v25

    goto/16 :goto_b

    .line 323
    .restart local v26    # "shrinkingCol":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :cond_10
    move-object/from16 v34, v25

    goto/16 :goto_c

    .line 331
    .restart local v27    # "growingCol":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    .local v28, "seq":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase;>;"
    .restart local v29    # "i":I
    .local v30, "c":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :cond_11
    add-int/lit8 v29, v29, -0x1

    goto :goto_d

    .line 358
    .end local v29    # "i":I
    .local v28, "sdiff":D
    .local v30, "delta1":D
    .restart local v32    # "delta2":D
    :cond_12
    move-wide/from16 v36, v28

    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v36, v0

    goto :goto_e

    .line 360
    .end local v25    # "resizingCol":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    .end local v26    # "shrinkingCol":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    .end local v27    # "growingCol":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    .end local v28    # "sdiff":D
    .end local v30    # "delta1":D
    .end local v32    # "delta2":D
    :cond_13
    move-wide/from16 v34, v23

    const-wide/16 v36, 0x0

    cmpl-double v34, v34, v36

    if-nez v34, :cond_14

    const/16 v34, 0x1

    :goto_f
    move/from16 v3, v34

    goto/16 :goto_0

    :cond_14
    const/16 v34, 0x0

    goto :goto_f
.end method

.method private static getResizableChildren(Ljavafx/scene/control/TableColumnBase;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;Z)",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 395
    move-object v1, p0

    .local v1, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move v2, p1

    .local v2, "isShrinking":Z
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 396
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v6

    .line 410
    .end local v1    # "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :goto_0
    return-object v1

    .line 399
    .restart local v1    # "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 400
    .local v3, "tablecolumns":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase<**>;>;"
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TableColumnBase;

    move-object v5, v6

    .line 401
    .local v5, "c":Ljavafx/scene/control/TableColumnBase;
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->isVisible()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 402
    :cond_2
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->isResizable()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 404
    :cond_3
    move v6, v2

    if-eqz v6, :cond_5

    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v6

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/control/TableColumnBase;->getMinWidth()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_5

    .line 405
    move-object v6, v3

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 409
    :cond_4
    :goto_2
    goto :goto_1

    .line 406
    :cond_5
    move v6, v2

    if-nez v6, :cond_4

    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v6

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/control/TableColumnBase;->getMaxWidth()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_4

    .line 407
    move-object v6, v3

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    .line 410
    .end local v5    # "c":Ljavafx/scene/control/TableColumnBase;
    :cond_6
    move-object v6, v3

    move-object v1, v6

    goto :goto_0
.end method

.method static varargs handleSortFailure(Ljavafx/collections/ObservableList;Ljavafx/scene/control/TableUtil$SortEventType;[Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;",
            "Ljavafx/scene/control/TableUtil$SortEventType;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "sortOrder":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljavafx/scene/control/TableColumnBase;>;"
    move-object v1, p1

    .local v1, "sortEventType":Ljavafx/scene/control/TableUtil$SortEventType;
    move-object v2, p2

    .local v2, "supportInfo":[Ljava/lang/Object;
    move-object v6, v1

    sget-object v7, Ljavafx/scene/control/TableUtil$SortEventType;->COLUMN_SORT_TYPE_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    if-ne v6, v7, :cond_1

    .line 122
    move-object v6, v2

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Ljavafx/scene/control/TableColumnBase;

    move-object v3, v6

    .line 123
    .local v3, "changedColumn":Ljavafx/scene/control/TableColumnBase;
    move-object v6, v3

    invoke-static {v6}, Ljavafx/scene/control/TableUtil;->revertSortType(Ljavafx/scene/control/TableColumnBase;)V

    .line 124
    .line 147
    .end local v3    # "changedColumn":Ljavafx/scene/control/TableColumnBase;
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    move-object v6, v1

    sget-object v7, Ljavafx/scene/control/TableUtil$SortEventType;->SORT_ORDER_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    if-ne v6, v7, :cond_5

    .line 126
    move-object v6, v2

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Ljavafx/collections/ListChangeListener$Change;

    move-object v3, v6

    .line 128
    .local v3, "change":Ljavafx/collections/ListChangeListener$Change;
    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v6

    .line 129
    .local v4, "toRemove":Ljava/util/List;
    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 130
    .local v5, "toAdd":Ljava/util/List;
    :cond_2
    :goto_1
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 131
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 132
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v6

    .line 135
    :cond_3
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 136
    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_1

    .line 140
    :cond_4
    move-object v6, v0

    move-object v7, v4

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v6

    .line 141
    move-object v6, v0

    move-object v7, v5

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v6

    .line 142
    goto :goto_0

    .end local v3    # "change":Ljavafx/collections/ListChangeListener$Change;
    .end local v4    # "toRemove":Ljava/util/List;
    .end local v5    # "toAdd":Ljava/util/List;
    :cond_5
    move-object v6, v1

    sget-object v7, Ljavafx/scene/control/TableUtil$SortEventType;->COLUMN_SORTABLE_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    if-ne v6, v7, :cond_6

    goto :goto_0

    .line 144
    :cond_6
    move-object v6, v1

    sget-object v7, Ljavafx/scene/control/TableUtil$SortEventType;->COLUMN_COMPARATOR_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    if-ne v6, v7, :cond_0

    goto :goto_0
.end method

.method static removeColumnsListener(Ljava/util/List;Ljavafx/collections/ListChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;",
            "Ljavafx/collections/ListChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase;>;"
    move-object v1, p1

    .local v1, "cl":Ljavafx/collections/ListChangeListener;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TableColumnBase;

    move-object v3, v4

    .line 102
    .local v3, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 103
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v1

    invoke-static {v4, v5}, Ljavafx/scene/control/TableUtil;->removeColumnsListener(Ljava/util/List;Ljavafx/collections/ListChangeListener;)V

    .line 104
    goto :goto_1

    .line 105
    .end local v3    # "col":Ljavafx/scene/control/TableColumnBase;
    :cond_1
    goto :goto_0
.end method

.method static removeTableColumnListener(Ljava/util/List;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase;>;"
    move-object v1, p1

    .local v1, "columnVisibleObserver":Ljavafx/beans/InvalidationListener;
    move-object v2, p2

    .local v2, "columnSortableObserver":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "columnSortTypeObserver":Ljavafx/beans/InvalidationListener;
    move-object/from16 v4, p4

    .local v4, "columnComparatorObserver":Ljavafx/beans/InvalidationListener;
    move-object v7, v0

    if-nez v7, :cond_0

    .line 70
    :goto_0
    return-void

    .line 52
    :cond_0
    move-object v7, v0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_1
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TableColumnBase;

    move-object v6, v7

    .line 53
    .local v6, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/control/TableColumnBase;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 54
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/control/TableColumnBase;->sortableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 55
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/control/TableColumnBase;->comparatorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 58
    move-object v7, v6

    instance-of v7, v7, Ljavafx/scene/control/TableColumn;

    if-eqz v7, :cond_2

    .line 59
    move-object v7, v6

    check-cast v7, Ljavafx/scene/control/TableColumn;

    invoke-virtual {v7}, Ljavafx/scene/control/TableColumn;->sortTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 64
    :cond_1
    :goto_2
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Ljavafx/scene/control/TableUtil;->removeTableColumnListener(Ljava/util/List;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    .line 69
    goto :goto_1

    .line 60
    :cond_2
    move-object v7, v6

    instance-of v7, v7, Ljavafx/scene/control/TreeTableColumn;

    if-eqz v7, :cond_1

    .line 61
    move-object v7, v6

    check-cast v7, Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableColumn;->sortTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_2

    .line 70
    .end local v6    # "col":Ljavafx/scene/control/TableColumnBase;
    :cond_3
    goto :goto_0
.end method

.method static resize(Ljavafx/scene/control/TableColumnBase;D)D
    .locals 13

    .prologue
    .line 367
    move-object v1, p0

    .local v1, "column":Ljavafx/scene/control/TableColumnBase;
    move-wide v2, p1

    .local v2, "delta":D
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    const-wide/16 v8, 0x0

    move-wide v1, v8

    .line 386
    .end local v1    # "column":Ljavafx/scene/control/TableColumnBase;
    :goto_0
    return-wide v1

    .line 368
    .restart local v1    # "column":Ljavafx/scene/control/TableColumnBase;
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TableColumnBase;->isResizable()Z

    move-result v8

    if-nez v8, :cond_1

    move-wide v8, v2

    move-wide v1, v8

    goto :goto_0

    .line 370
    :cond_1
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    move v4, v8

    .line 371
    .local v4, "isShrinking":Z
    move-object v8, v1

    move v9, v4

    invoke-static {v8, v9}, Ljavafx/scene/control/TableUtil;->getResizableChildren(Ljavafx/scene/control/TableColumnBase;Z)Ljava/util/List;

    move-result-object v8

    move-object v5, v8

    .line 373
    .local v5, "resizingChildren":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase<**>;>;"
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 374
    move-object v8, v5

    move-wide v9, v2

    invoke-static {v8, v9, v10}, Ljavafx/scene/control/TableUtil;->resizeColumns(Ljava/util/List;D)D

    move-result-wide v8

    move-wide v1, v8

    goto :goto_0

    .line 370
    .end local v4    # "isShrinking":Z
    .end local v5    # "resizingChildren":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase<**>;>;"
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 376
    .restart local v4    # "isShrinking":Z
    .restart local v5    # "resizingChildren":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/TableColumnBase<**>;>;"
    :cond_3
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v8

    move-wide v10, v2

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 378
    .local v6, "newWidth":D
    move-wide v8, v6

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/TableColumnBase;->getMaxWidth()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_4

    .line 379
    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/control/TableColumnBase;->getMaxWidth()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableColumnBase;->impl_setWidth(D)V

    .line 380
    move-wide v8, v6

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/TableColumnBase;->getMaxWidth()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v1, v8

    goto :goto_0

    .line 381
    :cond_4
    move-wide v8, v6

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/TableColumnBase;->getMinWidth()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_5

    .line 382
    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/control/TableColumnBase;->getMinWidth()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableColumnBase;->impl_setWidth(D)V

    .line 383
    move-wide v8, v6

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/TableColumnBase;->getMinWidth()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v1, v8

    goto :goto_0

    .line 385
    :cond_5
    move-object v8, v1

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TableColumnBase;->impl_setWidth(D)V

    .line 386
    const-wide/16 v8, 0x0

    move-wide v1, v8

    goto :goto_0
.end method

.method private static resizeColumns(Ljava/util/List;D)D
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;>;D)D"
        }
    .end annotation

    .prologue
    .line 419
    move-object/from16 v2, p0

    .local v2, "columns":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase<**>;>;"
    move-wide/from16 v3, p1

    .local v3, "delta":D
    move-object/from16 v16, v2

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v5, v16

    .line 424
    .local v5, "columnCount":I
    move-wide/from16 v16, v3

    move/from16 v18, v5

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v6, v16

    .line 430
    .local v6, "colDelta":D
    move-wide/from16 v16, v3

    move-wide/from16 v8, v16

    .line 434
    .local v8, "remainingDelta":D
    const/16 v16, 0x0

    move/from16 v10, v16

    .line 439
    .local v10, "col":I
    const/16 v16, 0x1

    move/from16 v11, v16

    .line 440
    .local v11, "isClean":Z
    move-object/from16 v16, v2

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v12, v16

    :goto_0
    move-object/from16 v16, v12

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v16, v12

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavafx/scene/control/TableColumnBase;

    move-object/from16 v13, v16

    .line 441
    .local v13, "childCol":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    add-int/lit8 v10, v10, 0x1

    .line 444
    move-object/from16 v16, v13

    move-wide/from16 v17, v6

    invoke-static/range {v16 .. v18}, Ljavafx/scene/control/TableUtil;->resize(Ljavafx/scene/control/TableColumnBase;D)D

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 448
    .local v14, "leftOverDelta":D
    move-wide/from16 v16, v8

    move-wide/from16 v18, v6

    sub-double v16, v16, v18

    move-wide/from16 v18, v14

    add-double v16, v16, v18

    move-wide/from16 v8, v16

    .line 452
    move-wide/from16 v16, v14

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-eqz v16, :cond_0

    .line 453
    const/16 v16, 0x0

    move/from16 v11, v16

    .line 456
    move-wide/from16 v16, v8

    move/from16 v18, v5

    move/from16 v19, v10

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v6, v16

    .line 458
    :cond_0
    goto :goto_0

    .line 461
    .end local v13    # "childCol":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    .end local v14    # "leftOverDelta":D
    :cond_1
    move/from16 v16, v11

    if-eqz v16, :cond_2

    const-wide/16 v16, 0x0

    :goto_1
    move-wide/from16 v2, v16

    .end local v2    # "columns":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase<**>;>;"
    return-wide v2

    .restart local v2    # "columns":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase<**>;>;"
    :cond_2
    move-wide/from16 v16, v8

    goto :goto_1
.end method

.method private static revertSortType(Ljavafx/scene/control/TableColumnBase;)V
    .locals 5

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "changedColumn":Ljavafx/scene/control/TableColumnBase;
    move-object v3, v0

    instance-of v3, v3, Ljavafx/scene/control/TableColumn;

    if-eqz v3, :cond_3

    .line 151
    move-object v3, v0

    check-cast v3, Ljavafx/scene/control/TableColumn;

    move-object v1, v3

    .line 152
    .local v1, "tableColumn":Ljavafx/scene/control/TableColumn;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumn;->getSortType()Ljavafx/scene/control/TableColumn$SortType;

    move-result-object v3

    move-object v2, v3

    .line 153
    .local v2, "sortType":Ljavafx/scene/control/TableColumn$SortType;
    move-object v3, v2

    sget-object v4, Ljavafx/scene/control/TableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TableColumn$SortType;

    if-ne v3, v4, :cond_1

    .line 154
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableColumn;->setSortType(Ljavafx/scene/control/TableColumn$SortType;)V

    .line 160
    .line 171
    .end local v1    # "tableColumn":Ljavafx/scene/control/TableColumn;
    .end local v2    # "sortType":Ljavafx/scene/control/TableColumn$SortType;
    :cond_0
    :goto_0
    return-void

    .line 155
    .restart local v1    # "tableColumn":Ljavafx/scene/control/TableColumn;
    .restart local v2    # "sortType":Ljavafx/scene/control/TableColumn$SortType;
    :cond_1
    move-object v3, v2

    sget-object v4, Ljavafx/scene/control/TableColumn$SortType;->DESCENDING:Ljavafx/scene/control/TableColumn$SortType;

    if-ne v3, v4, :cond_2

    .line 156
    move-object v3, v1

    sget-object v4, Ljavafx/scene/control/TableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TableColumn$SortType;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableColumn;->setSortType(Ljavafx/scene/control/TableColumn$SortType;)V

    goto :goto_0

    .line 157
    :cond_2
    move-object v3, v2

    if-nez v3, :cond_0

    .line 158
    move-object v3, v1

    sget-object v4, Ljavafx/scene/control/TableColumn$SortType;->DESCENDING:Ljavafx/scene/control/TableColumn$SortType;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableColumn;->setSortType(Ljavafx/scene/control/TableColumn$SortType;)V

    goto :goto_0

    .line 160
    .end local v1    # "tableColumn":Ljavafx/scene/control/TableColumn;
    .end local v2    # "sortType":Ljavafx/scene/control/TableColumn$SortType;
    :cond_3
    move-object v3, v0

    instance-of v3, v3, Ljavafx/scene/control/TreeTableColumn;

    if-eqz v3, :cond_0

    .line 161
    move-object v3, v0

    check-cast v3, Ljavafx/scene/control/TreeTableColumn;

    move-object v1, v3

    .line 162
    .local v1, "tableColumn":Ljavafx/scene/control/TreeTableColumn;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableColumn;->getSortType()Ljavafx/scene/control/TreeTableColumn$SortType;

    move-result-object v3

    move-object v2, v3

    .line 163
    .local v2, "sortType":Ljavafx/scene/control/TreeTableColumn$SortType;
    move-object v3, v2

    sget-object v4, Ljavafx/scene/control/TreeTableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TreeTableColumn$SortType;

    if-ne v3, v4, :cond_4

    .line 164
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableColumn;->setSortType(Ljavafx/scene/control/TreeTableColumn$SortType;)V

    goto :goto_0

    .line 165
    :cond_4
    move-object v3, v2

    sget-object v4, Ljavafx/scene/control/TreeTableColumn$SortType;->DESCENDING:Ljavafx/scene/control/TreeTableColumn$SortType;

    if-ne v3, v4, :cond_5

    .line 166
    move-object v3, v1

    sget-object v4, Ljavafx/scene/control/TreeTableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TreeTableColumn$SortType;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableColumn;->setSortType(Ljavafx/scene/control/TreeTableColumn$SortType;)V

    goto :goto_0

    .line 167
    :cond_5
    move-object v3, v2

    if-nez v3, :cond_0

    .line 168
    move-object v3, v1

    sget-object v4, Ljavafx/scene/control/TreeTableColumn$SortType;->DESCENDING:Ljavafx/scene/control/TreeTableColumn$SortType;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableColumn;->setSortType(Ljavafx/scene/control/TreeTableColumn$SortType;)V

    goto :goto_0
.end method
