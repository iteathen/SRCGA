.class final Lcom/sun/javafx/css/PseudoClassImpl;
.super Ljavafx/css/PseudoClass;
.source "PseudoClassImpl.java"


# instance fields
.field private final index:I

.field private final pseudoClassName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassImpl;
    move-object v1, p1

    .local v1, "pseudoClassName":Ljava/lang/String;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/css/PseudoClass;-><init>()V

    .line 37
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/css/PseudoClassImpl;->pseudoClassName:Ljava/lang/String;

    .line 38
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/css/PseudoClassImpl;->index:I

    .line 39
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/css/PseudoClassImpl;->index:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassImpl;
    return v0
.end method

.method public getPseudoClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/PseudoClassImpl;->pseudoClassName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassImpl;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/PseudoClassImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/PseudoClassImpl;->pseudoClassName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/PseudoClassImpl;
    return-object v0
.end method
