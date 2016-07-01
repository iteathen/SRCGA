.class Lcom/sun/javafx/css/parser/LexerState;
.super Ljava/lang/Object;
.source "LexerState.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final name:Ljava/lang/String;

.field private final recognizers:[Lcom/sun/javafx/css/parser/Recognizer;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sun/javafx/css/parser/LexerState;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/css/parser/LexerState;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/LexerState;
    move-object v1, v0

    const/4 v2, 0x0

    const-string v3, "invalid"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/sun/javafx/css/parser/Recognizer;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/javafx/css/parser/LexerState;-><init>(ILjava/lang/String;Lcom/sun/javafx/css/parser/Recognizer;[Lcom/sun/javafx/css/parser/Recognizer;)V

    .line 71
    return-void
.end method

.method public varargs constructor <init>(ILjava/lang/String;Lcom/sun/javafx/css/parser/Recognizer;[Lcom/sun/javafx/css/parser/Recognizer;)V
    .locals 13

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/LexerState;
    move v1, p1

    .local v1, "type":I
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "recognizer":Lcom/sun/javafx/css/parser/Recognizer;
    move-object/from16 v4, p4

    .local v4, "others":[Lcom/sun/javafx/css/parser/Recognizer;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-boolean v7, Lcom/sun/javafx/css/parser/LexerState;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    move-object v7, v2

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 51
    :cond_0
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lcom/sun/javafx/css/parser/LexerState;->type:I

    .line 52
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/sun/javafx/css/parser/LexerState;->name:Ljava/lang/String;

    .line 53
    move-object v7, v3

    if-eqz v7, :cond_3

    .line 54
    const/4 v7, 0x1

    move-object v8, v4

    if-eqz v8, :cond_1

    move-object v8, v4

    array-length v8, v8

    :goto_0
    add-int/2addr v7, v8

    move v5, v7

    .line 55
    .local v5, "nRecognizers":I
    move-object v7, v0

    move v8, v5

    new-array v8, v8, [Lcom/sun/javafx/css/parser/Recognizer;

    iput-object v8, v7, Lcom/sun/javafx/css/parser/LexerState;->recognizers:[Lcom/sun/javafx/css/parser/Recognizer;

    .line 56
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/parser/LexerState;->recognizers:[Lcom/sun/javafx/css/parser/Recognizer;

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    .line 57
    const/4 v7, 0x1

    move v6, v7

    .local v6, "n":I
    :goto_1
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/parser/LexerState;->recognizers:[Lcom/sun/javafx/css/parser/Recognizer;

    array-length v8, v8

    if-ge v7, v8, :cond_2

    .line 58
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/parser/LexerState;->recognizers:[Lcom/sun/javafx/css/parser/Recognizer;

    move v8, v6

    move-object v9, v4

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    .line 57
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 54
    .end local v5    # "nRecognizers":I
    .end local v6    # "n":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 60
    .line 63
    :cond_2
    :goto_2
    return-void

    .line 61
    :cond_3
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/css/parser/LexerState;->recognizers:[Lcom/sun/javafx/css/parser/Recognizer;

    goto :goto_2
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lcom/sun/javafx/css/parser/Recognizer;[Lcom/sun/javafx/css/parser/Recognizer;)V
    .locals 9

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/LexerState;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "recognizer":Lcom/sun/javafx/css/parser/Recognizer;
    move-object v3, p3

    .local v3, "others":[Lcom/sun/javafx/css/parser/Recognizer;
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/css/parser/LexerState;-><init>(ILjava/lang/String;Lcom/sun/javafx/css/parser/Recognizer;[Lcom/sun/javafx/css/parser/Recognizer;)V

    .line 67
    return-void
.end method


# virtual methods
.method public accepts(I)Z
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/LexerState;
    move v1, p1

    .local v1, "c":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/LexerState;->recognizers:[Lcom/sun/javafx/css/parser/Recognizer;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/LexerState;->recognizers:[Lcom/sun/javafx/css/parser/Recognizer;

    array-length v4, v4

    :goto_0
    move v2, v4

    .line 39
    .local v2, "nRecognizers":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "n":I
    :goto_1
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_2

    .line 40
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/LexerState;->recognizers:[Lcom/sun/javafx/css/parser/Recognizer;

    move v5, v3

    aget-object v4, v4, v5

    move v5, v1

    invoke-interface {v4, v5}, Lcom/sun/javafx/css/parser/Recognizer;->recognize(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move v0, v4

    .line 42
    .end local v0    # "this":Lcom/sun/javafx/css/parser/LexerState;
    :goto_2
    return v0

    .line 38
    .end local v2    # "nRecognizers":I
    .end local v3    # "n":I
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/LexerState;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 39
    .restart local v2    # "nRecognizers":I
    .restart local v3    # "n":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 42
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/LexerState;
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 84
    .end local v0    # "this":Lcom/sun/javafx/css/parser/LexerState;
    :goto_0
    return v0

    .line 83
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/LexerState;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/javafx/css/parser/LexerState;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/parser/LexerState;->name:Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/parser/LexerState;

    iget-object v3, v3, Lcom/sun/javafx/css/parser/LexerState;->name:Ljava/lang/String;

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/LexerState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/css/parser/LexerState;->type:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/parser/LexerState;
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/LexerState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/parser/LexerState;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/parser/LexerState;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/LexerState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/parser/LexerState;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/parser/LexerState;
    return-object v0
.end method
