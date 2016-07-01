.class public final Lcom/sun/javafx/css/CssError$InlineStyleParsingError;
.super Lcom/sun/javafx/css/CssError;
.source "CssError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/CssError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InlineStyleParsingError"
.end annotation


# instance fields
.field private final styleable:Ljavafx/css/Styleable;


# direct methods
.method public constructor <init>(Ljavafx/css/Styleable;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError$InlineStyleParsingError;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/CssError;-><init>(Ljava/lang/String;)V

    .line 124
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/css/CssError$InlineStyleParsingError;->styleable:Ljavafx/css/Styleable;

    .line 125
    return-void
.end method


# virtual methods
.method public getStyleable()Ljavafx/css/Styleable;
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError$InlineStyleParsingError;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CssError$InlineStyleParsingError;->styleable:Ljavafx/css/Styleable;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CssError$InlineStyleParsingError;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError$InlineStyleParsingError;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/CssError$InlineStyleParsingError;->styleable:Ljavafx/css/Styleable;

    invoke-interface {v3}, Ljavafx/css/Styleable;->getStyle()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 136
    .local v1, "inlineStyle":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/CssError$InlineStyleParsingError;->styleable:Ljavafx/css/Styleable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 138
    .local v2, "source":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSS Error parsing in-line style \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/CssError$InlineStyleParsingError;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/CssError$InlineStyleParsingError;
    return-object v0
.end method
