.class Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
.super Ljava/lang/Object;
.source "StyleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/StyleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StylesheetContainer"
.end annotation


# instance fields
.field final checksum:[B

.field checksumInvalid:Z

.field final fname:Ljava/lang/String;

.field final hash:I

.field final imageCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation
.end field

.field final parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/css/StyleManager$RefList",
            "<",
            "Ljavafx/scene/Parent;",
            ">;"
        }
    .end annotation
.end field

.field final selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

.field final stylesheet:Lcom/sun/javafx/css/Stylesheet;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sun/javafx/css/Stylesheet;)V
    .locals 7

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    move-object v2, p2

    .local v2, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/css/Stylesheet;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/javafx/css/StyleManager;->calculateCheckSum(Ljava/lang/String;)[B

    move-result-object v6

    :goto_0
    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/Stylesheet;[B)V

    .line 290
    return-void

    .line 289
    :cond_0
    const/4 v6, 0x0

    new-array v6, v6, [B

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Lcom/sun/javafx/css/Stylesheet;[B)V
    .locals 16

    .prologue
    .line 292
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object/from16 v1, p1

    .local v1, "fname":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object/from16 v3, p3

    .local v3, "checksum":[B
    move-object v12, v0

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 286
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->checksumInvalid:Z

    .line 294
    move-object v12, v0

    move-object v13, v1

    iput-object v13, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    .line 295
    move-object v12, v0

    move-object v13, v1

    if-eqz v13, :cond_2

    move-object v13, v1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v13

    :goto_0
    iput v13, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->hash:I

    .line 297
    move-object v12, v0

    move-object v13, v2

    iput-object v13, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->stylesheet:Lcom/sun/javafx/css/Stylesheet;

    .line 298
    move-object v12, v2

    if-eqz v12, :cond_7

    .line 299
    move-object v12, v0

    new-instance v13, Lcom/sun/javafx/css/SelectorPartitioning;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Lcom/sun/javafx/css/SelectorPartitioning;-><init>()V

    iput-object v13, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    .line 300
    move-object v12, v2

    invoke-virtual {v12}, Lcom/sun/javafx/css/Stylesheet;->getRules()Ljava/util/List;

    move-result-object v12

    move-object v4, v12

    .line 301
    .local v4, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Rule;>;"
    move-object v12, v4

    if-eqz v12, :cond_0

    move-object v12, v4

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_0
    const/4 v12, 0x0

    :goto_1
    move v5, v12

    .line 302
    .local v5, "rMax":I
    const/4 v12, 0x0

    move v6, v12

    .local v6, "r":I
    :goto_2
    move v12, v6

    move v13, v5

    if-ge v12, v13, :cond_6

    .line 304
    move-object v12, v4

    move v13, v6

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/Rule;

    move-object v7, v12

    .line 305
    .local v7, "rule":Lcom/sun/javafx/css/Rule;
    move-object v12, v7

    invoke-virtual {v12}, Lcom/sun/javafx/css/Rule;->getUnobservedSelectorList()Ljava/util/List;

    move-result-object v12

    move-object v8, v12

    .line 306
    .local v8, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move-object v12, v8

    if-eqz v12, :cond_1

    move-object v12, v8

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_1
    const/4 v12, 0x0

    :goto_3
    move v9, v12

    .line 307
    .local v9, "sMax":I
    const/4 v12, 0x0

    move v10, v12

    .local v10, "s":I
    :goto_4
    move v12, v10

    move v13, v9

    if-ge v12, v13, :cond_5

    .line 309
    move-object v12, v8

    move v13, v10

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/Selector;

    move-object v11, v12

    .line 310
    .local v11, "selector":Lcom/sun/javafx/css/Selector;
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    move-object v13, v11

    invoke-virtual {v12, v13}, Lcom/sun/javafx/css/SelectorPartitioning;->partition(Lcom/sun/javafx/css/Selector;)V

    .line 307
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 295
    .end local v4    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Rule;>;"
    .end local v5    # "rMax":I
    .end local v6    # "r":I
    .end local v7    # "rule":Lcom/sun/javafx/css/Rule;
    .end local v8    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    .end local v9    # "sMax":I
    .end local v10    # "s":I
    .end local v11    # "selector":Lcom/sun/javafx/css/Selector;
    :cond_2
    const/16 v13, 0x7f

    goto :goto_0

    .line 301
    .restart local v4    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Rule;>;"
    :cond_3
    move-object v12, v4

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    goto :goto_1

    .line 306
    .restart local v5    # "rMax":I
    .restart local v6    # "r":I
    .restart local v7    # "rule":Lcom/sun/javafx/css/Rule;
    .restart local v8    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    :cond_4
    move-object v12, v8

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    goto :goto_3

    .line 302
    .restart local v9    # "sMax":I
    .restart local v10    # "s":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 315
    .line 319
    .end local v4    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Rule;>;"
    .end local v5    # "rMax":I
    .end local v6    # "r":I
    .end local v7    # "rule":Lcom/sun/javafx/css/Rule;
    .end local v8    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    .end local v9    # "sMax":I
    .end local v10    # "s":I
    :cond_6
    :goto_5
    move-object v12, v0

    new-instance v13, Lcom/sun/javafx/css/StyleManager$RefList;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Lcom/sun/javafx/css/StyleManager$RefList;-><init>()V

    iput-object v13, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    .line 322
    move-object v12, v0

    new-instance v13, Ljava/util/ArrayList;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->imageCache:Ljava/util/List;

    .line 324
    move-object v12, v0

    move-object v13, v3

    iput-object v13, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->checksum:[B

    .line 325
    return-void

    .line 316
    :cond_7
    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 339
    const/4 v3, 0x0

    move v0, v3

    .line 348
    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :goto_0
    return v0

    .line 341
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 342
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 344
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v2, v3

    .line 345
    .local v2, "other":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    if-nez v3, :cond_3

    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 346
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 345
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 348
    :cond_4
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->hash:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    return v0
.end method

.method invalidateChecksum()V
    .locals 3

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->checksum:[B

    array-length v2, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->checksumInvalid:Z

    .line 330
    return-void

    .line 329
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    return-object v0
.end method
