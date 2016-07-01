.class final Lcom/sun/javafx/css/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field static final EOF:I = -0x1

.field static final EOF_TOKEN:Lcom/sun/javafx/css/parser/Token;

.field static final INVALID:I = 0x0

.field static final INVALID_TOKEN:Lcom/sun/javafx/css/parser/Token;

.field static final SKIP:I = 0x1

.field static final SKIP_TOKEN:Lcom/sun/javafx/css/parser/Token;


# instance fields
.field private line:I

.field private offset:I

.field private final text:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 35
    new-instance v0, Lcom/sun/javafx/css/parser/Token;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, -0x1

    const-string v3, "EOF"

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/parser/Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sun/javafx/css/parser/Token;->EOF_TOKEN:Lcom/sun/javafx/css/parser/Token;

    .line 36
    new-instance v0, Lcom/sun/javafx/css/parser/Token;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "INVALID"

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/parser/Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sun/javafx/css/parser/Token;->INVALID_TOKEN:Lcom/sun/javafx/css/parser/Token;

    .line 37
    new-instance v0, Lcom/sun/javafx/css/parser/Token;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "SKIP"

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/parser/Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sun/javafx/css/parser/Token;->SKIP_TOKEN:Lcom/sun/javafx/css/parser/Token;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/Token;
    move-object v1, v0

    const/4 v2, 0x0

    const-string v3, "INVALID"

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/parser/Token;-><init>(ILjava/lang/String;)V

    .line 56
    return-void
.end method

.method constructor <init>(I)V
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/Token;
    move v1, p1

    .local v1, "type":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/css/parser/Token;-><init>(ILjava/lang/String;)V

    .line 52
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/Token;
    move v1, p1

    .local v1, "type":I
    move-object v2, p2

    .local v2, "text":Ljava/lang/String;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/css/parser/Token;-><init>(ILjava/lang/String;II)V

    .line 48
    return-void
.end method

.method constructor <init>(ILjava/lang/String;II)V
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/Token;
    move v1, p1

    .local v1, "type":I
    move-object v2, p2

    .local v2, "text":Ljava/lang/String;
    move v3, p3

    .local v3, "line":I
    move v4, p4

    .local v4, "offset":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/javafx/css/parser/Token;->type:I

    .line 41
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/css/parser/Token;->text:Ljava/lang/String;

    .line 42
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/css/parser/Token;->line:I

    .line 43
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/css/parser/Token;->offset:I

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/Token;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 103
    .end local v0    # "this":Lcom/sun/javafx/css/parser/Token;
    :goto_0
    return v0

    .line 92
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/Token;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 93
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 94
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 96
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/parser/Token;

    move-object v2, v3

    .line 97
    .local v2, "other":Lcom/sun/javafx/css/parser/Token;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/css/parser/Token;->type:I

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/css/parser/Token;->type:I

    if-eq v3, v4, :cond_3

    .line 98
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 100
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/Token;->text:Ljava/lang/String;

    if-nez v3, :cond_5

    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/css/parser/Token;->text:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 101
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 100
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/Token;->text:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/parser/Token;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    :cond_6
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method getLine()I
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/Token;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/css/parser/Token;->line:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/parser/Token;
    return v0
.end method

.method getOffset()I
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/Token;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/css/parser/Token;->offset:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/parser/Token;
    return v0
.end method

.method getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/Token;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/parser/Token;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/parser/Token;
    return-object v0
.end method

.method getType()I
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/Token;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/css/parser/Token;->type:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/parser/Token;
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/Token;
    const/4 v2, 0x7

    move v1, v2

    .line 109
    .local v1, "hash":I
    const/16 v2, 0x43

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/css/parser/Token;->type:I

    add-int/2addr v2, v3

    move v1, v2

    .line 110
    const/16 v2, 0x43

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/Token;->text:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/Token;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 111
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/parser/Token;
    return v0

    .line 110
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/Token;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method setLine(I)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/Token;
    move v1, p1

    .local v1, "line":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/css/parser/Token;->line:I

    .line 72
    return-void
.end method

.method setOffset(I)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/Token;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/css/parser/Token;->offset:I

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/Token;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 84
    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v2, v1

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/css/parser/Token;->line:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/css/parser/Token;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/Token;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/css/parser/Token;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/parser/Token;
    return-object v0
.end method
