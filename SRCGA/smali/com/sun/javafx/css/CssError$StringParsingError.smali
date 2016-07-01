.class public final Lcom/sun/javafx/css/CssError$StringParsingError;
.super Lcom/sun/javafx/css/CssError;
.source "CssError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/CssError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringParsingError"
.end annotation


# instance fields
.field private final style:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError$StringParsingError;
    move-object v1, p1

    .local v1, "style":Ljava/lang/String;
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/CssError;-><init>(Ljava/lang/String;)V

    .line 152
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/css/CssError$StringParsingError;->style:Ljava/lang/String;

    .line 153
    return-void
.end method


# virtual methods
.method public getStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError$StringParsingError;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CssError$StringParsingError;->style:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CssError$StringParsingError;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError$StringParsingError;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSS Error parsing \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/CssError$StringParsingError;->style:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/CssError$StringParsingError;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CssError$StringParsingError;
    return-object v0
.end method
