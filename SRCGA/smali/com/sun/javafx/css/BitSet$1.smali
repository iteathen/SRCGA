.class Lcom/sun/javafx/css/BitSet$1;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/css/BitSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field element:I

.field index:I

.field next:I

.field final synthetic this$0:Lcom/sun/javafx/css/BitSet;


# direct methods
.method constructor <init>(Lcom/sun/javafx/css/BitSet;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet$1;, "Lcom/sun/javafx/css/BitSet$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/css/BitSet;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/css/BitSet$1;->this$0:Lcom/sun/javafx/css/BitSet;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 91
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/css/BitSet$1;->next:I

    .line 92
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/css/BitSet$1;->element:I

    .line 93
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/css/BitSet$1;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 10

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet$1;, "Lcom/sun/javafx/css/BitSet$1;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/BitSet$1;->this$0:Lcom/sun/javafx/css/BitSet;

    invoke-static {v4}, Lcom/sun/javafx/css/BitSet;->access$000(Lcom/sun/javafx/css/BitSet;)[J

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/BitSet$1;->this$0:Lcom/sun/javafx/css/BitSet;

    invoke-static {v4}, Lcom/sun/javafx/css/BitSet;->access$000(Lcom/sun/javafx/css/BitSet;)[J

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_1

    .line 98
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .line 120
    .end local v0    # "this":Lcom/sun/javafx/css/BitSet$1;, "Lcom/sun/javafx/css/BitSet$1;"
    .local v1, "found":Z
    :goto_0
    return v0

    .line 101
    .end local v1    # "found":Z
    .restart local v0    # "this":Lcom/sun/javafx/css/BitSet$1;, "Lcom/sun/javafx/css/BitSet$1;"
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    .line 104
    .restart local v1    # "found":Z
    :cond_2
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/css/BitSet$1;->next:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/sun/javafx/css/BitSet$1;->next:I

    const/16 v5, 0x40

    if-lt v4, v5, :cond_3

    .line 105
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/css/BitSet$1;->element:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    iput v6, v5, Lcom/sun/javafx/css/BitSet$1;->element:I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/BitSet$1;->this$0:Lcom/sun/javafx/css/BitSet;

    invoke-static {v5}, Lcom/sun/javafx/css/BitSet;->access$000(Lcom/sun/javafx/css/BitSet;)[J

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 106
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/javafx/css/BitSet$1;->next:I

    .line 112
    :cond_3
    const-wide/16 v4, 0x1

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/css/BitSet$1;->next:I

    shl-long/2addr v4, v6

    move-wide v2, v4

    .line 113
    .local v2, "bit":J
    move-wide v4, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/BitSet$1;->this$0:Lcom/sun/javafx/css/BitSet;

    invoke-static {v6}, Lcom/sun/javafx/css/BitSet;->access$000(Lcom/sun/javafx/css/BitSet;)[J

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/css/BitSet$1;->element:I

    aget-wide v6, v6, v7

    and-long/2addr v4, v6

    move-wide v6, v2

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    .line 115
    move v4, v1

    if-eqz v4, :cond_2

    .line 117
    move v4, v1

    if-eqz v4, :cond_4

    .line 118
    move-object v4, v0

    const/16 v5, 0x40

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/css/BitSet$1;->element:I

    mul-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/css/BitSet$1;->next:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/css/BitSet$1;->index:I

    .line 120
    :cond_4
    move v4, v1

    move v0, v4

    goto :goto_0

    .line 108
    .end local v2    # "bit":J
    :cond_5
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 113
    .restart local v2    # "bit":J
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet$1;, "Lcom/sun/javafx/css/BitSet$1;"
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/javafx/css/BitSet$1;->this$0:Lcom/sun/javafx/css/BitSet;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/css/BitSet$1;->index:I

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/BitSet;->getT(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/BitSet$1;, "Lcom/sun/javafx/css/BitSet$1;"
    return-object v0

    .line 127
    .restart local v0    # "this":Lcom/sun/javafx/css/BitSet$1;, "Lcom/sun/javafx/css/BitSet$1;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 128
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/css/BitSet$1;->element:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/css/BitSet$1;->next:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public remove()V
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet$1;, "Lcom/sun/javafx/css/BitSet$1;"
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/javafx/css/BitSet$1;->this$0:Lcom/sun/javafx/css/BitSet;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/css/BitSet$1;->index:I

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/BitSet;->getT(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 136
    .local v1, "t":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/BitSet$1;->this$0:Lcom/sun/javafx/css/BitSet;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/BitSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 139
    .line 140
    return-void

    .line 137
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 138
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/css/BitSet$1;->element:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/css/BitSet$1;->next:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
