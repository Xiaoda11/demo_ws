// Generated by gencpp from file plumbing_srv/demo01.msg
// DO NOT EDIT!


#ifndef PLUMBING_SRV_MESSAGE_DEMO01_H
#define PLUMBING_SRV_MESSAGE_DEMO01_H

#include <ros/service_traits.h>


#include <plumbing_srv/demo01Request.h>
#include <plumbing_srv/demo01Response.h>


namespace plumbing_srv
{

struct demo01
{

typedef demo01Request Request;
typedef demo01Response Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct demo01
} // namespace plumbing_srv


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::plumbing_srv::demo01 > {
  static const char* value()
  {
    return "4781436a0c2affec8025955a6041e481";
  }

  static const char* value(const ::plumbing_srv::demo01&) { return value(); }
};

template<>
struct DataType< ::plumbing_srv::demo01 > {
  static const char* value()
  {
    return "plumbing_srv/demo01";
  }

  static const char* value(const ::plumbing_srv::demo01&) { return value(); }
};


// service_traits::MD5Sum< ::plumbing_srv::demo01Request> should match
// service_traits::MD5Sum< ::plumbing_srv::demo01 >
template<>
struct MD5Sum< ::plumbing_srv::demo01Request>
{
  static const char* value()
  {
    return MD5Sum< ::plumbing_srv::demo01 >::value();
  }
  static const char* value(const ::plumbing_srv::demo01Request&)
  {
    return value();
  }
};

// service_traits::DataType< ::plumbing_srv::demo01Request> should match
// service_traits::DataType< ::plumbing_srv::demo01 >
template<>
struct DataType< ::plumbing_srv::demo01Request>
{
  static const char* value()
  {
    return DataType< ::plumbing_srv::demo01 >::value();
  }
  static const char* value(const ::plumbing_srv::demo01Request&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::plumbing_srv::demo01Response> should match
// service_traits::MD5Sum< ::plumbing_srv::demo01 >
template<>
struct MD5Sum< ::plumbing_srv::demo01Response>
{
  static const char* value()
  {
    return MD5Sum< ::plumbing_srv::demo01 >::value();
  }
  static const char* value(const ::plumbing_srv::demo01Response&)
  {
    return value();
  }
};

// service_traits::DataType< ::plumbing_srv::demo01Response> should match
// service_traits::DataType< ::plumbing_srv::demo01 >
template<>
struct DataType< ::plumbing_srv::demo01Response>
{
  static const char* value()
  {
    return DataType< ::plumbing_srv::demo01 >::value();
  }
  static const char* value(const ::plumbing_srv::demo01Response&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PLUMBING_SRV_MESSAGE_DEMO01_H
