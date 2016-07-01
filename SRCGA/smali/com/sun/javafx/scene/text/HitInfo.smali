.class public Lcom/sun/javafx/scene/text/HitInfo;
.super Ljava/lang/Object;
.source "HitInfo.java"


# instance fields
.field private charIndex:I

.field private leading:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharIndex()I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/text/HitInfo;->charIndex:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/text/HitInfo;
    return v0
.end method

.method public getInsertionIndex()I
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/text/HitInfo;->leading:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/text/HitInfo;->charIndex:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/text/HitInfo;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/text/HitInfo;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/text/HitInfo;->charIndex:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isLeading()Z
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/text/HitInfo;->leading:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/text/HitInfo;
    return v0
.end method

.method public setCharIndex(I)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/text/HitInfo;
    move v1, p1

    .local v1, "charIndex":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/scene/text/HitInfo;->charIndex:I

    return-void
.end method

.method public setLeading(Z)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/text/HitInfo;
    move v1, p1

    .local v1, "leading":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/text/HitInfo;->leading:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/text/HitInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "charIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/text/HitInfo;->charIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLeading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/text/HitInfo;->leading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/text/HitInfo;
    return-object v0
.end method
