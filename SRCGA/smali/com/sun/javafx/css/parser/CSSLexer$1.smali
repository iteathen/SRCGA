.class Lcom/sun/javafx/css/parser/CSSLexer$1;
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
.method varargs constructor <init>(Lcom/sun/javafx/css/parser/CSSLexer;Ljava/lang/String;Lcom/sun/javafx/css/parser/Recognizer;[Lcom/sun/javafx/css/parser/Recognizer;)V
    .locals 9

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSLexer$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/css/parser/CSSLexer;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "recognizer":Lcom/sun/javafx/css/parser/Recognizer;
    move-object v4, p4

    .local v4, "others":[Lcom/sun/javafx/css/parser/Recognizer;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/css/parser/CSSLexer$1;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/css/parser/LexerState;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/parser/Recognizer;[Lcom/sun/javafx/css/parser/Recognizer;)V

    return-void
.end method


# virtual methods
.method public accepts(I)Z
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSLexer$1;
    move v1, p1

    .local v1, "c":I
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSLexer$1;
    return v0
.end method
