.class final Lcom/sun/javafx/css/Match;
.super Ljava/lang/Object;
.source "Match.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sun/javafx/css/Match;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final idCount:I

.field final pseudoClasses:Lcom/sun/javafx/css/PseudoClassState;

.field final selector:Lcom/sun/javafx/css/Selector;

.field final specificity:I

.field final styleClassCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/sun/javafx/css/Match;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/css/Match;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sun/javafx/css/Selector;Lcom/sun/javafx/css/PseudoClassState;II)V
    .locals 12

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Match;
    move-object v1, p1

    .local v1, "selector":Lcom/sun/javafx/css/Selector;
    move-object v2, p2

    .local v2, "pseudoClasses":Lcom/sun/javafx/css/PseudoClassState;
    move v3, p3

    .local v3, "idCount":I
    move/from16 v4, p4

    .local v4, "styleClassCount":I
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-boolean v7, Lcom/sun/javafx/css/Match;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    move-object v7, v1

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 52
    :cond_0
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/javafx/css/Match;->selector:Lcom/sun/javafx/css/Selector;

    .line 53
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/javafx/css/Match;->idCount:I

    .line 54
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/css/Match;->styleClassCount:I

    .line 55
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/sun/javafx/css/Match;->pseudoClasses:Lcom/sun/javafx/css/PseudoClassState;

    .line 56
    move-object v7, v2

    if-eqz v7, :cond_2

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/css/PseudoClassState;->size()I

    move-result v7

    :goto_0
    move v5, v7

    .line 57
    .local v5, "nPseudoClasses":I
    move-object v7, v1

    instance-of v7, v7, Lcom/sun/javafx/css/SimpleSelector;

    if-eqz v7, :cond_1

    .line 58
    move-object v7, v1

    check-cast v7, Lcom/sun/javafx/css/SimpleSelector;

    move-object v6, v7

    .line 59
    .local v6, "simple":Lcom/sun/javafx/css/SimpleSelector;
    move-object v7, v6

    invoke-virtual {v7}, Lcom/sun/javafx/css/SimpleSelector;->getNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v7

    sget-object v8, Ljavafx/geometry/NodeOrientation;->INHERIT:Ljavafx/geometry/NodeOrientation;

    if-eq v7, v8, :cond_1

    .line 60
    add-int/lit8 v5, v5, 0x1

    .line 63
    .end local v6    # "simple":Lcom/sun/javafx/css/SimpleSelector;
    :cond_1
    move-object v7, v0

    move v8, v3

    const/16 v9, 0x8

    shl-int/lit8 v8, v8, 0x8

    move v9, v4

    const/4 v10, 0x4

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    move v9, v5

    or-int/2addr v8, v9

    iput v8, v7, Lcom/sun/javafx/css/Match;->specificity:I

    .line 64
    return-void

    .line 56
    .end local v5    # "nPseudoClasses":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/sun/javafx/css/Match;)I
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Match;
    move-object v1, p1

    .local v1, "o":Lcom/sun/javafx/css/Match;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/css/Match;->specificity:I

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/css/Match;->specificity:I

    sub-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/Match;
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Match;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/Match;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/Match;->compareTo(Lcom/sun/javafx/css/Match;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/Match;
    return v0
.end method
