.class Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;
.super Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;
.source "BidirectionalBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringConverterBidirectionalBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final converter:Ljavafx/util/StringConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/StringConverter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljavafx/util/StringConverter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 813
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding<TT;>;"
    move-object v1, p1

    .local v1, "stringProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "otherProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v3, p3

    .local v3, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;-><init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 814
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;->converter:Ljavafx/util/StringConverter;

    .line 815
    return-void
.end method


# virtual methods
.method protected fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 824
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;->converter:Ljavafx/util/StringConverter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/util/StringConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding<TT;>;"
    return-object v0
.end method

.method protected toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 819
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;->converter:Ljavafx/util/StringConverter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding<TT;>;"
    return-object v0
.end method
