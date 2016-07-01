.class public Ljavax/script/ScriptException;
.super Ljava/lang/Exception;
.source "ScriptException.java"


# static fields
.field private static final serialVersionUID:J = 0x72b36e5166b03f29L


# instance fields
.field private columnNumber:I

.field private fileName:Ljava/lang/String;

.field private lineNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptException;
    move-object v1, p1

    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 66
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavax/script/ScriptException;->fileName:Ljava/lang/String;

    .line 67
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/script/ScriptException;->lineNumber:I

    .line 68
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/script/ScriptException;->columnNumber:I

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptException;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 53
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavax/script/ScriptException;->fileName:Ljava/lang/String;

    .line 54
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/script/ScriptException;->lineNumber:I

    .line 55
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/script/ScriptException;->columnNumber:I

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "fileName":Ljava/lang/String;
    move v3, p3

    .local v3, "lineNumber":I
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 85
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavax/script/ScriptException;->fileName:Ljava/lang/String;

    .line 86
    move-object v4, v0

    move v5, v3

    iput v5, v4, Ljavax/script/ScriptException;->lineNumber:I

    .line 87
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Ljavax/script/ScriptException;->columnNumber:I

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "fileName":Ljava/lang/String;
    move v3, p3

    .local v3, "lineNumber":I
    move v4, p4

    .local v4, "columnNumber":I
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 103
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavax/script/ScriptException;->fileName:Ljava/lang/String;

    .line 104
    move-object v5, v0

    move v6, v3

    iput v6, v5, Ljavax/script/ScriptException;->lineNumber:I

    .line 105
    move-object v5, v0

    move v6, v4

    iput v6, v5, Ljavax/script/ScriptException;->columnNumber:I

    .line 106
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptException;
    move-object v1, v0

    iget v1, v1, Ljavax/script/ScriptException;->columnNumber:I

    move v0, v1

    .end local v0    # "this":Ljavax/script/ScriptException;
    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptException;
    move-object v1, v0

    iget-object v1, v1, Ljavax/script/ScriptException;->fileName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavax/script/ScriptException;
    return-object v0
.end method

.method public getLineNumber()I
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptException;
    move-object v1, v0

    iget v1, v1, Ljavax/script/ScriptException;->lineNumber:I

    move v0, v1

    .end local v0    # "this":Ljavax/script/ScriptException;
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavax/script/ScriptException;
    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 115
    .local v1, "ret":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavax/script/ScriptException;->fileName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavax/script/ScriptException;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 117
    move-object v2, v0

    iget v2, v2, Ljavax/script/ScriptException;->lineNumber:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Ljavax/script/ScriptException;->lineNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 121
    :cond_0
    move-object v2, v0

    iget v2, v2, Ljavax/script/ScriptException;->columnNumber:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at column number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Ljavax/script/ScriptException;->columnNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 126
    :cond_1
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavax/script/ScriptException;
    return-object v0
.end method
