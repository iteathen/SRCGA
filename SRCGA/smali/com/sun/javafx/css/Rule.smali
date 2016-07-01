.class public final Lcom/sun/javafx/css/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/Rule$Observables;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final bssVersion:I

.field private declarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Declaration;",
            ">;"
        }
    .end annotation
.end field

.field private observables:Lcom/sun/javafx/css/Rule$Observables;

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

.field private serializedDecls:[B

.field private stylesheet:Lcom/sun/javafx/css/Stylesheet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/sun/javafx/css/Rule;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/css/Rule;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Selector;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Declaration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule;
    move-object v1, p1

    .local v1, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move-object v2, p2

    .local v2, "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    .line 62
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    .line 103
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/css/Rule;->observables:Lcom/sun/javafx/css/Rule$Observables;

    .line 171
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    .line 172
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    .line 173
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/css/Rule;->serializedDecls:[B

    .line 174
    move-object v7, v0

    const/4 v8, 0x5

    iput v8, v7, Lcom/sun/javafx/css/Rule;->bssVersion:I

    .line 176
    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    move v3, v7

    .line 177
    .local v3, "sMax":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 178
    move-object v7, v1

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/Selector;

    move-object v5, v7

    .line 179
    .local v5, "sel":Lcom/sun/javafx/css/Selector;
    move-object v7, v5

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/sun/javafx/css/Selector;->setRule(Lcom/sun/javafx/css/Rule;)V

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 176
    .end local v3    # "sMax":I
    .end local v4    # "i":I
    .end local v5    # "sel":Lcom/sun/javafx/css/Selector;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 182
    .restart local v3    # "sMax":I
    .restart local v4    # "i":I
    :cond_1
    move-object v7, v2

    if-eqz v7, :cond_2

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    :goto_2
    move v4, v7

    .line 183
    .local v4, "dMax":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "d":I
    :goto_3
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_3

    .line 184
    move-object v7, v2

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/Declaration;

    move-object v6, v7

    .line 185
    .local v6, "decl":Lcom/sun/javafx/css/Declaration;
    move-object v7, v6

    move-object v8, v0

    iput-object v8, v7, Lcom/sun/javafx/css/Declaration;->rule:Lcom/sun/javafx/css/Rule;

    .line 183
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 182
    .end local v5    # "d":I
    .end local v6    # "decl":Lcom/sun/javafx/css/Declaration;
    .local v4, "i":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 187
    .local v4, "dMax":I
    .restart local v5    # "d":I
    :cond_3
    return-void
.end method

.method private constructor <init>(Ljava/util/List;[BI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Selector;",
            ">;[BI)V"
        }
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule;
    move-object v1, p1

    .local v1, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move-object v2, p2

    .local v2, "buf":[B
    move v3, p3

    .local v3, "bssVersion":I
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    .line 62
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    .line 103
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/css/Rule;->observables:Lcom/sun/javafx/css/Rule$Observables;

    .line 194
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    .line 195
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    .line 196
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/sun/javafx/css/Rule;->serializedDecls:[B

    .line 197
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/javafx/css/Rule;->bssVersion:I

    .line 199
    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    move v4, v7

    .line 200
    .local v4, "sMax":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 201
    move-object v7, v1

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/Selector;

    move-object v6, v7

    .line 202
    .local v6, "sel":Lcom/sun/javafx/css/Selector;
    move-object v7, v6

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/sun/javafx/css/Selector;->setRule(Lcom/sun/javafx/css/Rule;)V

    .line 200
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 199
    .end local v4    # "sMax":I
    .end local v5    # "i":I
    .end local v6    # "sel":Lcom/sun/javafx/css/Selector;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 205
    .restart local v4    # "sMax":I
    .restart local v5    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic access$400(Lcom/sun/javafx/css/Rule;)Lcom/sun/javafx/css/Stylesheet;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/Rule;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Rule;->stylesheet:Lcom/sun/javafx/css/Stylesheet;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/Rule;
    return-object v0
.end method

.method static readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/Rule;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    move v0, p0

    .local v0, "bssVersion":I
    move-object/from16 v1, p1

    .local v1, "is":Ljava/io/DataInputStream;
    move-object/from16 v2, p2

    .local v2, "strings":[Ljava/lang/String;
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    move v3, v9

    .line 359
    .local v3, "nSelectors":S
    new-instance v9, Ljava/util/ArrayList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v3

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v9

    .line 360
    .local v4, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    :goto_0
    move v9, v5

    move v10, v3

    if-ge v9, v10, :cond_0

    .line 361
    move v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/css/Selector;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/Selector;

    move-result-object v9

    move-object v6, v9

    .line 362
    .local v6, "s":Lcom/sun/javafx/css/Selector;
    move-object v9, v4

    move-object v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 360
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 365
    .end local v6    # "s":Lcom/sun/javafx/css/Selector;
    :cond_0
    move v9, v0

    const/4 v10, 0x4

    if-ge v9, v10, :cond_2

    .line 366
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    move v5, v9

    .line 367
    .local v5, "nDeclarations":S
    new-instance v9, Ljava/util/ArrayList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v5

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v9

    .line 368
    .local v6, "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_1
    move v9, v7

    move v10, v5

    if-ge v9, v10, :cond_1

    .line 369
    move v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/css/Declaration;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/Declaration;

    move-result-object v9

    move-object v8, v9

    .line 370
    .local v8, "d":Lcom/sun/javafx/css/Declaration;
    move-object v9, v6

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 368
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 373
    .end local v8    # "d":Lcom/sun/javafx/css/Declaration;
    :cond_1
    new-instance v9, Lcom/sun/javafx/css/Rule;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v4

    move-object v12, v6

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/Rule;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object v0, v9

    .line 383
    .end local v0    # "bssVersion":I
    .end local v5    # "nDeclarations":S
    .end local v6    # "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    .end local v7    # "i":I
    :goto_2
    return-object v0

    .line 377
    .restart local v0    # "bssVersion":I
    .local v5, "i":I
    :cond_2
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    move v5, v9

    .line 378
    .local v5, "nBytes":I
    move v9, v5

    new-array v9, v9, [B

    move-object v6, v9

    .line 380
    .local v6, "buf":[B
    move v9, v5

    if-lez v9, :cond_3

    .line 381
    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/io/DataInputStream;->readFully([B)V

    .line 383
    :cond_3
    new-instance v9, Lcom/sun/javafx/css/Rule;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v4

    move-object v12, v6

    move v13, v0

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/javafx/css/Rule;-><init>(Ljava/util/List;[BI)V

    move-object v0, v9

    goto :goto_2
.end method


# virtual methods
.method applies(Ljavafx/scene/Node;[Ljava/util/Set;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            "[",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 209
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/css/Rule;
    move-object v2, p1

    .local v2, "node":Ljavafx/scene/Node;
    move-object v3, p2

    .local v3, "triggerStates":[Ljava/util/Set;, "[Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .line 210
    .local v4, "mask":J
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 211
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    move v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/Selector;

    move-object v7, v8

    .line 212
    .local v7, "sel":Lcom/sun/javafx/css/Selector;
    move-object v8, v7

    move-object v9, v2

    move-object v10, v3

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/sun/javafx/css/Selector;->applies(Ljavafx/css/Styleable;[Ljava/util/Set;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 213
    move-wide v8, v4

    const-wide/16 v10, 0x1

    move v12, v6

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    move-wide v4, v8

    .line 210
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 216
    .end local v7    # "sel":Lcom/sun/javafx/css/Selector;
    :cond_1
    move-wide v8, v4

    move-wide v1, v8

    .end local v1    # "this":Lcom/sun/javafx/css/Rule;
    return-wide v1
.end method

.method public final getDeclarations()Ljavafx/collections/ObservableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/css/Declaration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Rule;->observables:Lcom/sun/javafx/css/Rule$Observables;

    if-nez v1, :cond_0

    .line 118
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/css/Rule$Observables;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/css/Rule$Observables;-><init>(Lcom/sun/javafx/css/Rule;Lcom/sun/javafx/css/Rule$1;)V

    iput-object v2, v1, Lcom/sun/javafx/css/Rule;->observables:Lcom/sun/javafx/css/Rule$Observables;

    .line 121
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Rule;->observables:Lcom/sun/javafx/css/Rule$Observables;

    invoke-static {v1}, Lcom/sun/javafx/css/Rule$Observables;->access$100(Lcom/sun/javafx/css/Rule$Observables;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Rule;
    return-object v0
.end method

.method public getOrigin()Ljavafx/css/StyleOrigin;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Rule;->stylesheet:Lcom/sun/javafx/css/Stylesheet;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Rule;->stylesheet:Lcom/sun/javafx/css/Stylesheet;

    invoke-virtual {v1}, Lcom/sun/javafx/css/Stylesheet;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Rule;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/css/Rule;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getSelectors()Ljavafx/collections/ObservableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/css/Selector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Rule;->observables:Lcom/sun/javafx/css/Rule$Observables;

    if-nez v1, :cond_0

    .line 137
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/css/Rule$Observables;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/css/Rule$Observables;-><init>(Lcom/sun/javafx/css/Rule;Lcom/sun/javafx/css/Rule$1;)V

    iput-object v2, v1, Lcom/sun/javafx/css/Rule;->observables:Lcom/sun/javafx/css/Rule$Observables;

    .line 140
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Rule;->observables:Lcom/sun/javafx/css/Rule$Observables;

    invoke-static {v1}, Lcom/sun/javafx/css/Rule$Observables;->access$200(Lcom/sun/javafx/css/Rule$Observables;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Rule;
    return-object v0
.end method

.method public getStylesheet()Lcom/sun/javafx/css/Stylesheet;
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Rule;->stylesheet:Lcom/sun/javafx/css/Stylesheet;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Rule;
    return-object v0
.end method

.method public getUnobservedDeclarationList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Declaration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    if-nez v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/Rule;->serializedDecls:[B

    if-eqz v8, :cond_2

    .line 72
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/Rule;->serializedDecls:[B

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v8

    .line 73
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    invoke-direct {v9, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v8

    .line 75
    .local v2, "dis":Ljava/io/DataInputStream;
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    move v3, v8

    .line 76
    .local v3, "nDeclarations":S
    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move v11, v3

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v8, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    .line 77
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 79
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/css/Rule;->bssVersion:I

    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/Rule;->stylesheet:Lcom/sun/javafx/css/Stylesheet;

    invoke-virtual {v10}, Lcom/sun/javafx/css/Stylesheet;->getStringStore()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sun/javafx/css/Declaration;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/Declaration;

    move-result-object v8

    move-object v5, v8

    .line 80
    .local v5, "decl":Lcom/sun/javafx/css/Declaration;
    move-object v8, v5

    move-object v9, v0

    iput-object v9, v8, Lcom/sun/javafx/css/Declaration;->rule:Lcom/sun/javafx/css/Rule;

    .line 82
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/Rule;->stylesheet:Lcom/sun/javafx/css/Stylesheet;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/Rule;->stylesheet:Lcom/sun/javafx/css/Stylesheet;

    invoke-virtual {v8}, Lcom/sun/javafx/css/Stylesheet;->getUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 83
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/Rule;->stylesheet:Lcom/sun/javafx/css/Stylesheet;

    invoke-virtual {v8}, Lcom/sun/javafx/css/Stylesheet;->getUrl()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 84
    .local v6, "stylesheetUrl":Ljava/lang/String;
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/Declaration;->fixUrl(Ljava/lang/String;)V

    .line 87
    .end local v6    # "stylesheetUrl":Ljava/lang/String;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    move-object v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    .end local v5    # "decl":Lcom/sun/javafx/css/Declaration;
    :cond_1
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/sun/javafx/css/Rule;->serializedDecls:[B

    .line 96
    .line 100
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "nDeclarations":S
    .end local v4    # "i":I
    :cond_2
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/css/Rule;
    return-object v0

    .line 90
    .restart local v0    # "this":Lcom/sun/javafx/css/Rule;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 91
    .local v1, "ioe":Ljava/io/IOException;
    move-object v8, v0

    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    .line 92
    sget-boolean v8, Lcom/sun/javafx/css/Rule;->$assertionsDisabled:Z

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/AssertionError;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/sun/javafx/css/Rule;->serializedDecls:[B

    move-object v8, v7

    throw v8

    .line 92
    .restart local v1    # "ioe":Ljava/io/IOException;
    :cond_3
    move-object v8, v1

    :try_start_2
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 95
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/sun/javafx/css/Rule;->serializedDecls:[B

    .line 96
    goto :goto_1
.end method

.method public getUnobservedSelectorList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Selector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    if-nez v1, :cond_0

    .line 57
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    .line 59
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Rule;
    return-object v0
.end method

.method setStylesheet(Lcom/sun/javafx/css/Stylesheet;)V
    .locals 7

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule;
    move-object v1, p1

    .local v1, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/css/Rule;->stylesheet:Lcom/sun/javafx/css/Stylesheet;

    .line 154
    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/css/Stylesheet;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 155
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/css/Stylesheet;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 157
    .local v2, "stylesheetUrl":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    move v3, v5

    .line 158
    .local v3, "nDeclarations":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "d":I
    :goto_1
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 159
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/css/Declaration;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/css/Declaration;->fixUrl(Ljava/lang/String;)V

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 157
    .end local v3    # "nDeclarations":I
    .end local v4    # "d":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 162
    .end local v2    # "stylesheetUrl":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 223
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 224
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 226
    :cond_0
    const/4 v4, 0x1

    move v2, v4

    .local v2, "n":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 227
    move-object v4, v1

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 228
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_1
    move-object v4, v1

    const-string v5, "{\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 231
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    move v2, v4

    .line 232
    .local v2, "nDeclarations":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "n":I
    :goto_2
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_3

    .line 233
    move-object v4, v1

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 234
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 235
    move-object v4, v1

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 231
    .end local v3    # "n":I
    .local v2, "n":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 237
    .local v2, "nDeclarations":I
    .restart local v3    # "n":I
    :cond_3
    move-object v4, v1

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 238
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/css/Rule;
    return-object v0
.end method

.method final writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule;
    move-object v1, p1

    .local v1, "os":Ljava/io/DataOutputStream;
    move-object/from16 v2, p2

    .local v2, "stringStore":Lcom/sun/javafx/css/StringStore;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    if-eqz v10, :cond_0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    :goto_0
    move v3, v10

    .line 326
    .local v3, "nSelectors":I
    move-object v10, v1

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 327
    const/4 v10, 0x0

    move v4, v10

    .local v4, "i":I
    :goto_1
    move v10, v4

    move v11, v3

    if-ge v10, v11, :cond_1

    .line 328
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/Rule;->selectors:Ljava/util/List;

    move v11, v4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/css/Selector;

    move-object v5, v10

    .line 329
    .local v5, "sel":Lcom/sun/javafx/css/Selector;
    move-object v10, v5

    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/css/Selector;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    .line 327
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 325
    .end local v3    # "nSelectors":I
    .end local v4    # "i":I
    .end local v5    # "sel":Lcom/sun/javafx/css/Selector;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 332
    .restart local v3    # "nSelectors":I
    .restart local v4    # "i":I
    :cond_1
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/css/Rule;->getUnobservedDeclarationList()Ljava/util/List;

    move-result-object v10

    move-object v4, v10

    .line 333
    .local v4, "decls":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    move-object v10, v4

    if-eqz v10, :cond_3

    .line 335
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/16 v12, 0x1448

    invoke-direct {v11, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v5, v10

    .line 336
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v10, Ljava/io/DataOutputStream;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v5

    invoke-direct {v11, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v10

    .line 338
    .local v6, "dos":Ljava/io/DataOutputStream;
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v7, v10

    .line 339
    .local v7, "nDeclarations":I
    move-object v10, v6

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 341
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_2
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_2

    .line 342
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/Rule;->declarations:Ljava/util/List;

    move v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/css/Declaration;

    move-object v9, v10

    .line 343
    .local v9, "decl":Lcom/sun/javafx/css/Declaration;
    move-object v10, v9

    move-object v11, v6

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/css/Declaration;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    .line 341
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 346
    .end local v9    # "decl":Lcom/sun/javafx/css/Declaration;
    :cond_2
    move-object v10, v1

    move-object v11, v5

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 347
    move-object v10, v1

    move-object v11, v5

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 349
    .line 353
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "dos":Ljava/io/DataOutputStream;
    .end local v7    # "nDeclarations":I
    .end local v8    # "i":I
    :goto_3
    return-void

    .line 351
    :cond_3
    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_3
.end method
