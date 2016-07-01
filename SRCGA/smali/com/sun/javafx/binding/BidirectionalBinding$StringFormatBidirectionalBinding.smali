.class Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;
.super Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;
.source "BidirectionalBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringFormatBidirectionalBinding"
.end annotation


# instance fields
.field private final format:Ljava/text/Format;


# direct methods
.method public constructor <init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljava/text/Format;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/beans/property/Property",
            "<*>;",
            "Ljava/text/Format;",
            ")V"
        }
    .end annotation

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;
    move-object v1, p1

    .local v1, "stringProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "otherProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<*>;"
    move-object v3, p3

    .local v3, "format":Ljava/text/Format;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;-><init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 794
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;->format:Ljava/text/Format;

    .line 795
    return-void
.end method


# virtual methods
.method protected fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 804
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;->format:Ljava/text/Format;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/text/Format;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;
    return-object v0
.end method

.method protected toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;->format:Ljava/text/Format;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;
    return-object v0
.end method
