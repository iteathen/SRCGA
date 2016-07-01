.class public final Lcom/sun/javafx/css/StyleMap;
.super Ljava/lang/Object;
.source "StyleMap.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EMPTY_MAP:Lcom/sun/javafx/css/StyleMap;

.field private static final cascadingStyleComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sun/javafx/css/CascadingStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cascadingStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/CascadingStyle;",
            ">;>;"
        }
    .end annotation
.end field

.field private final id:I

.field private selectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Selector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 38
    const-class v0, Lcom/sun/javafx/css/StyleMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/css/StyleMap;->$assertionsDisabled:Z

    .line 40
    new-instance v0, Lcom/sun/javafx/css/StyleMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, -0x1

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/StyleMap;-><init>(ILjava/util/List;)V

    sput-object v0, Lcom/sun/javafx/css/StyleMap;->EMPTY_MAP:Lcom/sun/javafx/css/StyleMap;

    .line 155
    invoke-static {}, Lcom/sun/javafx/css/StyleMap$$Lambda$1;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/css/StyleMap;->cascadingStyleComparator:Ljava/util/Comparator;

    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Selector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleMap;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/css/StyleMap;->id:I

    .line 46
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/css/StyleMap;->selectors:Ljava/util/List;

    .line 47
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/css/CascadingStyle;Lcom/sun/javafx/css/CascadingStyle;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/css/StyleMap;->lambda$static$24(Lcom/sun/javafx/css/CascadingStyle;Lcom/sun/javafx/css/CascadingStyle;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private static synthetic lambda$static$24(Lcom/sun/javafx/css/CascadingStyle;Lcom/sun/javafx/css/CascadingStyle;)I
    .locals 7

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "o1":Lcom/sun/javafx/css/CascadingStyle;
    move-object v1, p1

    .local v1, "o2":Lcom/sun/javafx/css/CascadingStyle;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/css/CascadingStyle;->getProperty()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 167
    .local v2, "thisProperty":Ljava/lang/String;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/css/CascadingStyle;->getProperty()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 169
    .local v3, "otherProperty":Ljava/lang/String;
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 170
    .local v4, "c":I
    move v5, v4

    if-eqz v5, :cond_0

    move v5, v4

    move v0, v5

    .line 172
    .end local v0    # "o1":Lcom/sun/javafx/css/CascadingStyle;
    :goto_0
    return v0

    .restart local v0    # "o1":Lcom/sun/javafx/css/CascadingStyle;
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/css/CascadingStyle;->compareTo(Lcom/sun/javafx/css/CascadingStyle;)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method public getCascadingStyles()Ljava/util/Map;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/CascadingStyle;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 61
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/css/StyleMap;
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/StyleMap;->cascadingStyles:Ljava/util/Map;

    if-nez v13, :cond_a

    .line 63
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/StyleMap;->selectors:Ljava/util/List;

    if-eqz v13, :cond_0

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/StyleMap;->selectors:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 64
    :cond_0
    move-object v13, v1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v14

    iput-object v14, v13, Lcom/sun/javafx/css/StyleMap;->cascadingStyles:Ljava/util/Map;

    .line 65
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/StyleMap;->cascadingStyles:Ljava/util/Map;

    move-object v1, v13

    .line 152
    .end local v1    # "this":Lcom/sun/javafx/css/StyleMap;
    :goto_0
    return-object v1

    .line 74
    .restart local v1    # "this":Lcom/sun/javafx/css/StyleMap;
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v13

    .line 76
    .local v2, "cascadingStyleList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;"
    const/4 v13, 0x0

    move v3, v13

    .line 77
    .local v3, "ordinal":I
    const/4 v13, 0x0

    move v4, v13

    .local v4, "i":I
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/StyleMap;->selectors:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move v5, v13

    .local v5, "iMax":I
    :goto_1
    move v13, v4

    move v14, v5

    if-ge v13, v14, :cond_3

    .line 79
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/StyleMap;->selectors:Ljava/util/List;

    move v14, v4

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/javafx/css/Selector;

    move-object v6, v13

    .line 81
    .local v6, "selector":Lcom/sun/javafx/css/Selector;
    move-object v13, v6

    invoke-virtual {v13}, Lcom/sun/javafx/css/Selector;->createMatch()Lcom/sun/javafx/css/Match;

    move-result-object v13

    move-object v7, v13

    .line 83
    .local v7, "match":Lcom/sun/javafx/css/Match;
    move-object v13, v6

    invoke-virtual {v13}, Lcom/sun/javafx/css/Selector;->getRule()Lcom/sun/javafx/css/Rule;

    move-result-object v13

    move-object v8, v13

    .line 85
    .local v8, "rule":Lcom/sun/javafx/css/Rule;
    const/4 v13, 0x0

    move v9, v13

    .local v9, "d":I
    move-object v13, v8

    invoke-virtual {v13}, Lcom/sun/javafx/css/Rule;->getDeclarations()Ljavafx/collections/ObservableList;

    move-result-object v13

    invoke-interface {v13}, Ljavafx/collections/ObservableList;->size()I

    move-result v13

    move v10, v13

    .local v10, "dmax":I
    :goto_2
    move v13, v9

    move v14, v10

    if-ge v13, v14, :cond_2

    .line 86
    move-object v13, v8

    invoke-virtual {v13}, Lcom/sun/javafx/css/Rule;->getDeclarations()Ljavafx/collections/ObservableList;

    move-result-object v13

    move v14, v9

    invoke-interface {v13, v14}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/javafx/css/Declaration;

    move-object v11, v13

    .line 88
    .local v11, "decl":Lcom/sun/javafx/css/Declaration;
    new-instance v13, Lcom/sun/javafx/css/CascadingStyle;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Lcom/sun/javafx/css/Style;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/Match;->selector:Lcom/sun/javafx/css/Selector;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-direct/range {v16 .. v18}, Lcom/sun/javafx/css/Style;-><init>(Lcom/sun/javafx/css/Selector;Lcom/sun/javafx/css/Declaration;)V

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/css/Match;->pseudoClasses:Lcom/sun/javafx/css/PseudoClassState;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/css/Match;->specificity:I

    move/from16 v17, v0

    move/from16 v18, v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct/range {v14 .. v18}, Lcom/sun/javafx/css/CascadingStyle;-><init>(Lcom/sun/javafx/css/Style;Ljava/util/Set;II)V

    move-object v12, v13

    .line 98
    .local v12, "s":Lcom/sun/javafx/css/CascadingStyle;
    move-object v13, v2

    move-object v14, v12

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 85
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 77
    .end local v11    # "decl":Lcom/sun/javafx/css/Declaration;
    .end local v12    # "s":Lcom/sun/javafx/css/CascadingStyle;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 103
    .end local v6    # "selector":Lcom/sun/javafx/css/Selector;
    .end local v7    # "match":Lcom/sun/javafx/css/Match;
    .end local v8    # "rule":Lcom/sun/javafx/css/Rule;
    .end local v9    # "d":I
    .end local v10    # "dmax":I
    :cond_3
    move-object v13, v2

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 104
    move-object v13, v1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v14

    iput-object v14, v13, Lcom/sun/javafx/css/StyleMap;->cascadingStyles:Ljava/util/Map;

    .line 105
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/StyleMap;->cascadingStyles:Ljava/util/Map;

    move-object v1, v13

    goto/16 :goto_0

    .line 110
    :cond_4
    move-object v13, v2

    sget-object v14, Lcom/sun/javafx/css/StyleMap;->cascadingStyleComparator:Ljava/util/Comparator;

    invoke-static {v13, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 115
    move-object v13, v2

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move v4, v13

    .line 116
    .local v4, "nCascadingStyles":I
    move-object v13, v1

    new-instance v14, Ljava/util/HashMap;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move/from16 v16, v4

    invoke-direct/range {v15 .. v16}, Ljava/util/HashMap;-><init>(I)V

    iput-object v14, v13, Lcom/sun/javafx/css/StyleMap;->cascadingStyles:Ljava/util/Map;

    .line 118
    move-object v13, v2

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/javafx/css/CascadingStyle;

    move-object v5, v13

    .line 119
    .local v5, "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    move-object v13, v5

    invoke-virtual {v13}, Lcom/sun/javafx/css/CascadingStyle;->getProperty()Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    .line 122
    .local v6, "property":Ljava/lang/String;
    const/4 v13, 0x0

    move v7, v13

    .local v7, "fromIndex":I
    :goto_3
    move v13, v7

    move v14, v4

    if-ge v13, v14, :cond_9

    .line 124
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/StyleMap;->cascadingStyles:Ljava/util/Map;

    move-object v14, v6

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move-object v8, v13

    .line 125
    .local v8, "value":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;"
    move-object v13, v8

    if-nez v13, :cond_8

    .line 127
    move v13, v7

    move v9, v13

    .line 128
    .local v9, "toIndex":I
    move-object v13, v6

    move-object v10, v13

    .line 130
    .local v10, "currentProperty":Ljava/lang/String;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    move v13, v9

    move v14, v4

    if-ge v13, v14, :cond_6

    .line 131
    move-object v13, v2

    move v14, v9

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/javafx/css/CascadingStyle;

    move-object v5, v13

    .line 132
    move-object v13, v5

    invoke-virtual {v13}, Lcom/sun/javafx/css/CascadingStyle;->getProperty()Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    .line 133
    move-object v13, v6

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 136
    :cond_6
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/StyleMap;->cascadingStyles:Ljava/util/Map;

    move-object v14, v10

    move-object v15, v2

    move/from16 v16, v7

    move/from16 v17, v9

    invoke-interface/range {v15 .. v17}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 138
    move v13, v9

    move v7, v13

    .line 145
    .end local v9    # "toIndex":I
    .end local v10    # "currentProperty":Ljava/lang/String;
    :cond_7
    goto :goto_3

    .line 143
    :cond_8
    sget-boolean v13, Lcom/sun/javafx/css/StyleMap;->$assertionsDisabled:Z

    if-nez v13, :cond_7

    new-instance v13, Ljava/lang/AssertionError;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 147
    .end local v8    # "value":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;"
    :cond_9
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/StyleMap;->selectors:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 148
    move-object v13, v1

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/sun/javafx/css/StyleMap;->selectors:Ljava/util/List;

    .line 152
    .end local v2    # "cascadingStyleList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;"
    .end local v3    # "ordinal":I
    .end local v4    # "nCascadingStyles":I
    .end local v5    # "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    .end local v6    # "property":Ljava/lang/String;
    .end local v7    # "fromIndex":I
    :cond_a
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/StyleMap;->cascadingStyles:Ljava/util/Map;

    move-object v1, v13

    goto/16 :goto_0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleMap;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/css/StyleMap;->id:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleMap;
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleMap;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleMap;->selectors:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleMap;->selectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    move v0, v1

    .line 56
    .end local v0    # "this":Lcom/sun/javafx/css/StyleMap;
    :goto_0
    return v0

    .line 55
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleMap;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleMap;->cascadingStyles:Ljava/util/Map;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleMap;->cascadingStyles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 56
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method
