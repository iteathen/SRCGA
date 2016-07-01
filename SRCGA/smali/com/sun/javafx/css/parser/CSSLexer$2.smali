.class Lcom/sun/javafx/css/parser/CSSLexer$2;
.super Lcom/sun/javafx/css/parser/LexerState;
.source "CSSLexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/parser/CSSLexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/css/parser/CSSLexer;


# direct methods
.method varargs constructor <init>(Lcom/sun/javafx/css/parser/CSSLexer;ILjava/lang/String;Lcom/sun/javafx/css/parser/Recognizer;[Lcom/sun/javafx/css/parser/Recognizer;)V
    .locals 11

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSLexer$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/css/parser/CSSLexer;
    move v2, p2

    .local v2, "type":I
    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move-object v4, p4

    .local v4, "recognizer":Lcom/sun/javafx/css/parser/Recognizer;
    move-object/from16 v5, p5

    .local v5, "others":[Lcom/sun/javafx/css/parser/Recognizer;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/css/parser/CSSLexer$2;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    move-object v6, v0

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/javafx/css/parser/LexerState;-><init>(ILjava/lang/String;Lcom/sun/javafx/css/parser/Recognizer;[Lcom/sun/javafx/css/parser/Recognizer;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 4

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSLexer$2;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/parser/CSSLexer$2;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v2}, Lcom/sun/javafx/css/parser/CSSLexer;->access$000(Lcom/sun/javafx/css/parser/CSSLexer;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "url("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 190
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/javafx/css/parser/CSSLexer$2;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v2}, Lcom/sun/javafx/css/parser/CSSLexer;->access$100(Lcom/sun/javafx/css/parser/CSSLexer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 195
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSLexer$2;
    :goto_0
    return v0

    .line 191
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSLexer$2;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 192
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 195
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Lcom/sun/javafx/css/parser/LexerState;->getType()I

    move-result v2

    move v0, v2

    goto :goto_0
.end method
