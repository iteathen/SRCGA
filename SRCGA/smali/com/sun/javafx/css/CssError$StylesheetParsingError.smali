.class public final Lcom/sun/javafx/css/CssError$StylesheetParsingError;
.super Lcom/sun/javafx/css/CssError;
.source "CssError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/CssError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StylesheetParsingError"
.end annotation


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError$StylesheetParsingError;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/CssError;-><init>(Ljava/lang/String;)V

    .line 101
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/css/CssError$StylesheetParsingError;->url:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public getURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError$StylesheetParsingError;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CssError$StylesheetParsingError;->url:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CssError$StylesheetParsingError;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError$StylesheetParsingError;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/CssError$StylesheetParsingError;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/CssError$StylesheetParsingError;->url:Ljava/lang/String;

    :goto_0
    move-object v1, v2

    .line 114
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSS Error parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/CssError$StylesheetParsingError;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/CssError$StylesheetParsingError;
    return-object v0

    .line 112
    .end local v1    # "path":Ljava/lang/String;
    .restart local v0    # "this":Lcom/sun/javafx/css/CssError$StylesheetParsingError;
    :cond_0
    const-string v2, "?"

    goto :goto_0
.end method
