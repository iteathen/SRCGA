.class public Ljavax/xml/stream/XMLStreamException;
.super Ljava/lang/Exception;
.source "XMLStreamException.java"


# instance fields
.field protected location:Ljavax/xml/stream/Location;

.field protected nested:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/XMLStreamException;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/XMLStreamException;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/XMLStreamException;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "th":Ljava/lang/Throwable;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 48
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavax/xml/stream/XMLStreamException;->nested:Ljava/lang/Throwable;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/XMLStreamException;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "location":Ljavax/xml/stream/Location;
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParseError at [row,col]:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v5}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    .line 75
    invoke-interface {v5}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 77
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavax/xml/stream/XMLStreamException;->location:Ljavax/xml/stream/Location;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/XMLStreamException;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "location":Ljavax/xml/stream/Location;
    move-object v3, p3

    .local v3, "th":Ljava/lang/Throwable;
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ParseError at [row,col]:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-interface {v6}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    .line 60
    invoke-interface {v6}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavax/xml/stream/XMLStreamException;->nested:Ljava/lang/Throwable;

    .line 63
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavax/xml/stream/XMLStreamException;->location:Ljavax/xml/stream/Location;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/XMLStreamException;
    move-object v1, p1

    .local v1, "th":Ljava/lang/Throwable;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/stream/XMLStreamException;->nested:Ljava/lang/Throwable;

    .line 38
    return-void
.end method


# virtual methods
.method public getLocation()Ljavax/xml/stream/Location;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/XMLStreamException;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/XMLStreamException;->location:Ljavax/xml/stream/Location;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/XMLStreamException;
    return-object v0
.end method

.method public getNestedException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/XMLStreamException;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/XMLStreamException;->nested:Ljava/lang/Throwable;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/XMLStreamException;
    return-object v0
.end method
