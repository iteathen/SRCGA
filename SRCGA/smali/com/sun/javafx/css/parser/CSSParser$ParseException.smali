.class final Lcom/sun/javafx/css/parser/CSSParser$ParseException;
.super Ljava/lang/Exception;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/parser/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParseException"
.end annotation


# instance fields
.field private final source:Ljava/lang/String;

.field private final tok:Lcom/sun/javafx/css/parser/Token;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/css/parser/CSSParser$ParseException;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/parser/Token;Lcom/sun/javafx/css/parser/CSSParser;)V

    .line 169
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/sun/javafx/css/parser/Token;Lcom/sun/javafx/css/parser/CSSParser;)V
    .locals 6

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "tok":Lcom/sun/javafx/css/parser/Token;
    move-object v3, p3

    .local v3, "parser":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 172
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/css/parser/CSSParser$ParseException;->tok:Lcom/sun/javafx/css/parser/Token;

    .line 173
    move-object v4, v3

    invoke-static {v4}, Lcom/sun/javafx/css/parser/CSSParser;->access$000(Lcom/sun/javafx/css/parser/CSSParser;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 174
    move-object v4, v0

    move-object v5, v3

    invoke-static {v5}, Lcom/sun/javafx/css/parser/CSSParser;->access$000(Lcom/sun/javafx/css/parser/CSSParser;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/css/parser/CSSParser$ParseException;->source:Ljava/lang/String;

    .line 182
    :goto_0
    return-void

    .line 175
    :cond_0
    move-object v4, v3

    invoke-static {v4}, Lcom/sun/javafx/css/parser/CSSParser;->access$100(Lcom/sun/javafx/css/parser/CSSParser;)Ljavafx/css/Styleable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 176
    move-object v4, v0

    move-object v5, v3

    invoke-static {v5}, Lcom/sun/javafx/css/parser/CSSParser;->access$100(Lcom/sun/javafx/css/parser/CSSParser;)Ljavafx/css/Styleable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/css/parser/CSSParser$ParseException;->source:Ljava/lang/String;

    goto :goto_0

    .line 177
    :cond_1
    move-object v4, v3

    invoke-static {v4}, Lcom/sun/javafx/css/parser/CSSParser;->access$200(Lcom/sun/javafx/css/parser/CSSParser;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 178
    move-object v4, v0

    move-object v5, v3

    invoke-static {v5}, Lcom/sun/javafx/css/parser/CSSParser;->access$200(Lcom/sun/javafx/css/parser/CSSParser;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/css/parser/CSSParser$ParseException;->source:Ljava/lang/String;

    goto :goto_0

    .line 180
    :cond_2
    move-object v4, v0

    const-string v5, "?"

    iput-object v5, v4, Lcom/sun/javafx/css/parser/CSSParser$ParseException;->source:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/sun/javafx/css/parser/CSSParser$ParseException;)Lcom/sun/javafx/css/parser/Token;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/parser/CSSParser$ParseException;->tok:Lcom/sun/javafx/css/parser/Token;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-super {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 185
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$ParseException;->source:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 186
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/parser/CSSParser$ParseException;->tok:Lcom/sun/javafx/css/parser/Token;

    if-eqz v2, :cond_0

    move-object v2, v1

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$ParseException;->tok:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 187
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    return-object v0
.end method
